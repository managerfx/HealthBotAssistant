using HealthBot.Miscellaneous;
using HealthBot.Model;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Builder.Luis.Models;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace HealthBot.Luis.Core
{
    [Serializable]
    public class GestoreLuisDialog : LuisDialog<object> 
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();

        #region Questionario Introduttivo 

        public async Task AvvioQuestionarioConoscitivo(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("*Inizializzazione in corso...*");
            Thread.Sleep(2000);
            await context.PostAsync("**Ti porrò alcune domande per conoscerti meglio.**");
            Thread.Sleep(1000);
            QuestioanarioIniziale questions = new QuestioanarioIniziale();
            await questions.StartAsync(context);
            
            
        }
        #endregion Questionario Introduttivo

        #region Valori Nutrizionali
        public async Task GetCarboidrati (IDialogContext context, LuisResult result)
        {
            var entityAlimento = result.GetValueEntity("Alimento::Tipo");

            if (!String.IsNullOrEmpty(entityAlimento) && db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).Any())
            {
                var alimentoCercato = db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).FirstOrDefault();

                await context.PostAsync($" L'alimento {alimentoCercato.Nome} contiene {alimentoCercato.CarboidratiSemplici} " +
                                    $"Carboidrati Semplici e {alimentoCercato.CarboidratiComplessi} Carboidrati Complessi");
            }
            else
            {
                await context.PostAsync("Mi dispiace ma l'alimento richiesto non è presente nel mio database");
            }
        }

        public async Task GetProteine(IDialogContext context, LuisResult result)
        {
            var entityAlimento = result.GetValueEntity("Alimento::Tipo");

            if (!string.IsNullOrEmpty(entityAlimento) && db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).Any())
                {
                    var alimentoCercato = db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).FirstOrDefault();
                    await context.PostAsync($" L'alimento {alimentoCercato.Nome} contiene {alimentoCercato.Proteine} Proteine");
                }
                else
                {
                    await context.PostAsync("Mi dispiace ma l'alimento richiesto non è presente nel mio database");
                }

        }

        public async Task GetFibre(IDialogContext context, LuisResult result)
        {
            var entityAlimento = result.GetValueEntity("Alimento::Tipo");

            if (!string.IsNullOrEmpty(entityAlimento) && db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).Any())
            {
                 var alimentoCercato = db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).FirstOrDefault();
                 await context.PostAsync($" L'alimento {alimentoCercato.Nome} contiene {alimentoCercato.Fibre} Fibre");
            }
            else
            {
                    await context.PostAsync("Mi dispiace ma l'alimento richiesto non è presente nel mio database");
            }
         }

        public async Task GetAcqua(IDialogContext context, LuisResult result)
        {
            var entityAlimento = result.GetValueEntity("Alimento::Tipo");

            if (!string.IsNullOrEmpty(entityAlimento) && db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).Any())
            {
                var alimentoCercato = db.ValoriNutrizionali.Where(v => v.Nome == entityAlimento).FirstOrDefault();
                    await context.PostAsync($" L'alimento {alimentoCercato.Nome} contiene {alimentoCercato.Acqua} di Acqua");
            }
            else
            {
                await context.PostAsync("Mi dispiace ma l'alimento richiesto non è presente nel mio database");
            }

         }
        #endregion Valori Nutrizionali
    }

    
    
}
