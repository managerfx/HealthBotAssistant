using HealthBot.Model;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Bot.Builder.Dialogs;
using System.Threading;
using HealthBot.Miscellaneous;
using HealthBot.Model.Dto;
using HealthBot.Luis.Core;

namespace HealthBot
{
    [Serializable]
    public class QuestioanarioIniziale : IDialog
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();
        List<Domanda> listDomande = new Domanda().GetMeDomandeIniziali();
        //Utente user = new Utente();
        List<FenotipoPaziente> fenotipi = new List<FenotipoPaziente>();

        public const int MaxRetry = 3;

        public async Task StartAsync(IDialogContext context)
        {
            PromptDialog.Confirm(context, GestoreDomandaIniziale, "Il test è composto da 7 semplici domande che mi aiutaranno a creare il profilo utente adatto alla tua persona. Vuoi iniziare?", "Devi rispondere SI o NO!", MaxRetry);
            
        }

        private async Task GestoreDomandaIniziale(IDialogContext context, IAwaitable<bool> result)
        {
            if (await result)
            {
                //Domanda NOME
                PromptDialog.Text(context, GestoreDomandaNome, listDomande.GetMeDomandaObjByUniqueId(DomainValues.NomeUtente), "Il nome deve essre una parola. Può contenere spazi.", MaxRetry);
            }
            else
                await context.PostAsync($"**Mi dispiace! Non potrai usare a pieno il servizio.**");
        }


        private async Task GestoreDomandaNome(IDialogContext context, IAwaitable<string> result)
        {
            MessagesController.CurrentUser.Nome = await result;
            
            //Domanda COGNOME
            PromptDialog.Text(context, GestoreDomandaCognome, listDomande.GetMeDomandaObjByUniqueId(DomainValues.CognomeUtente), "Il nome deve essre una parola. Può contenere spazi.", MaxRetry);
        }
        
        private async Task GestoreDomandaCognome(IDialogContext context, IAwaitable<string> result)
        {
            MessagesController.CurrentUser.Cognome = await result;

            //Domanda CF
            PromptDialog.Text(context, GestoreDomandaCf, listDomande.GetMeDomandaObjByUniqueId(DomainValues.CodiceFiscaleUtente));
        }
        private async Task GestoreDomandaCf(IDialogContext context, IAwaitable<string> result)
        {
            string fiscalCode = await result;
            if (CodiceFiscale.VerificaCodiceFiscale(fiscalCode))
            {
                MessagesController.CurrentUser.CodiceFiscale = fiscalCode.ToUpper();
                DateTime bornDate = CodiceFiscale.GetDateFromFiscalCode(fiscalCode);
                if (bornDate != DateTime.MinValue)
                {
                    MessagesController.CurrentUser.DataNascita = bornDate;
                }
            }

            //Domanda SVEGLIA
            PromptDialog.Text(context, GestoreDomandaSveglia, listDomande.GetMeDomandaObjByUniqueId(DomainValues.OrarioSvegliaUtente));
        }
        private async Task GestoreDomandaSveglia(IDialogContext context, IAwaitable<string> result)
        {
            var tmpOrarioSveglia = await result;
            fenotipi.Add(new FenotipoPaziente() { Chiave = DomainValues.OrarioSvegliaUtente, Valore = tmpOrarioSveglia, DataOraInserimento = DateTime.Now });
            MessagesController.CurrentUser.OrarioSveglia = tmpOrarioSveglia;

            //Domanda PRANZO
            PromptDialog.Text(context, GestoreDomandaOraPranzo, listDomande.GetMeDomandaObjByUniqueId(DomainValues.OrarioPranzoUtente), "Il nome deve essre una parola. Può contenere spazi.", MaxRetry);

        }
        private async Task GestoreDomandaOraPranzo(IDialogContext context, IAwaitable<string> result)
        {
            var tmpOrarioPranzo = await result;
            fenotipi.Add(new FenotipoPaziente() { Chiave = DomainValues.OrarioPranzoUtente, Valore = tmpOrarioPranzo, DataOraInserimento = DateTime.Now });
            MessagesController.CurrentUser.OrarioPranzo = tmpOrarioPranzo;

            //Domanda CENA
            PromptDialog.Text(context, GestoreDomandaOraCena, listDomande.GetMeDomandaObjByUniqueId(DomainValues.OrarioCenaUtente), "Il nome deve essre una parola. Può contenere spazi.", MaxRetry);
        }
        private async Task GestoreDomandaOraCena(IDialogContext context, IAwaitable<string> result)
        {
            var tmpOrarioCena = await result;
            fenotipi.Add(new FenotipoPaziente() { Chiave = DomainValues.OrarioCenaUtente, Valore = tmpOrarioCena, DataOraInserimento = DateTime.Now });
            MessagesController.CurrentUser.OrarioCena= tmpOrarioCena;

            //Domanda NUMERO PASTI
            PromptDialog.Text(context, GestoreDomandaNTotPasti, listDomande.GetMeDomandaObjByUniqueId(DomainValues.NumeroPastiAlGiorno), "Il nome deve essre una parola. Può contenere spazi.", MaxRetry);
        }


        private async Task GestoreDomandaNTotPasti(IDialogContext context, IAwaitable<string> result)
        {
            var tmpNumPasti = await result;

            int numPasti = 0;
            if (int.TryParse(tmpNumPasti, out numPasti))
            {
                fenotipi.Add(new FenotipoPaziente() { Chiave = DomainValues.NumeroPastiAlGiorno, Valore = numPasti.ToString(), DataOraInserimento = DateTime.Now });
                MessagesController.CurrentUser.NumeroPastiGiornalieri = numPasti;
            }

            var message = ComponiTestoFinale();
            SaveDatiPersona();
            await context.PostAsync(message);
            Thread.Sleep(1000);

            PromptDialog.Confirm(context, GestoreDomandaFinale, "Vuoi che ti mostri cosa so fare?", "Devi rispondere SI o NO!", MaxRetry);

        }

        private bool SaveDatiPersona()
        {
            var paziente = new Paziente()
            {
                ConversationId = MessagesController.CurrentUser.ConversationId,
                FromId = MessagesController.CurrentUser.FromId,
                FromName = MessagesController.CurrentUser.FromName,
                IdPaziente = MessagesController.CurrentUser.IdPaziente,
                CodiceFiscale = MessagesController.CurrentUser.CodiceFiscale,
                DataNascita = MessagesController.CurrentUser.DataNascita,
                Username = "username",
                Password = "password",
                DataPrimoInserimento = DateTime.Now,
                Nome = MessagesController.CurrentUser.Nome.FirstLetterToUpper(),
                Cognome = MessagesController.CurrentUser.Cognome.FirstLetterToUpper(),
            };

            db.Paziente.Add(paziente);
            db.SaveChanges();
            

            foreach (var fen in fenotipi)
            {
                fen.DataOraInserimento = DateTime.Now;
                fen.IdPaziente = paziente.IdPaziente;
            }
            db.FenotipoPaziente.AddRange(fenotipi);
            db.SaveChanges();
            return true;
        }

        private async Task GestoreDomandaFinale(IDialogContext context, IAwaitable<bool> result)
        {
            if (await result)
            {
                var humanInter = new HumanInteractionsLuisDialog();
                await humanInter.CosaSaiFare(context, null);
            }
            else
                await context.PostAsync($"**Ok, resto in attesa di un tuo comando.**");
        }





        private string ComponiTestoFinale()
        {
            var message = string.Empty;

            message = $"Bene, il tuo nome è **{MessagesController.CurrentUser.Nome} {MessagesController.CurrentUser.Cognome}** nato il **{MessagesController.CurrentUser.DataNascita.ToString("dd/MM/yyyy")}** (CF: **{MessagesController.CurrentUser.CodiceFiscale}**). Di solito di svegli alle ore **{MessagesController.CurrentUser.OrarioSveglia}**, mangi verso le ore **{MessagesController.CurrentUser.OrarioPranzo}** e ceni più o meno alle ore **{MessagesController.CurrentUser.OrarioCena}**. In totale ti siedi a tavola circa **{MessagesController.CurrentUser.NumeroPastiGiornalieri}** volte al giorno.";
            return message;
        }
        

    }
}