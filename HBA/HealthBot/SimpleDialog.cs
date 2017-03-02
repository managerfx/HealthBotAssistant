using Microsoft.Bot.Builder.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using Microsoft.Bot.Connector;
using HealthBot.Model;

namespace HealthBot
{
    [Serializable]
    public class SimpleDialog : IDialog
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();

        public async Task StartAsync(IDialogContext context)
        {
            context.Wait(QuestionarioIniziale2);
        }

        private async Task QuestionarioIniziale2(IDialogContext context, IAwaitable<object> result)
        {
            List<string> domande = new List<string>();
            domande.Add("Quanti *anni* hai?");
            domande.Add("Quale è il tuo *nome*?");
            domande.Add("Quale è il tuo *codice fiscale*?");
            domande.Add("Quante volte al giorno *assumi cibo*?");
            domande.Add("A che ora ti *svegli*?");
            domande.Add("A che ora si *conclude* la tua giornata?");
            //foreach (var item in domande)
            //{
            //  PromptDialog.Confirm(context, SalvaRisposta, "prova");
            //await result
            //}
            var message = $"Hey would you like to see what's on sale?";
            PromptDialog.Confirm(context, SalvaRisposta, message);

            context.Wait(QuestionarioIniziale2);

            throw new NotImplementedException();
        }

        //private async Task ActivityReceivedAsync(IDialogContext context, IAwaitable<object> result)
        //{
        //    var activity = await result as Activity;
        //    //if (activity.Text.Contains("saluto"))
        //    //{
        //        await context.PostAsync("Sto per aggiungerti tra i pazienti");
        //    //}
        //    context.Wait(ActivityReceivedAsync);
        //}


        private async Task SalvaRisposta(IDialogContext context, IAwaitable<bool> result)
        {
            //await context.PostAsync($"Aspetto risposta");

            if (await result)
            {
                await context.PostAsync($"Hai risposto: {result}");
            }
            else
            {
                await context.PostAsync($"Hai risposto: {result}");
            }

            //context.Wait();


            //var fenotipo = new FenotipoPaziente();
            ////fenotipo.Chiave
            //db.FenotipoPaziente.Add(fenotipo);
            //
            //db.SaveChanges();

        }
    }
}