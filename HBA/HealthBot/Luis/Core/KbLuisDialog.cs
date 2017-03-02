using HealthBot.Model;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Builder.Luis.Models;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace HealthBot.Luis.Core
{
    [Serializable]
    public class KbLuisDialog : LuisDialog<object>
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();

        public async Task RichiediCalcoloGlicemia(IDialogContext context, LuisResult result)
        {
            int time = Convert.ToInt32(MessagesController.TempoTrascorsoDaSveglia);
            await context.PostAsync("*Sto calcolando la tua glicemia...*");
            Thread.Sleep(1000);
            var valoreGlicemico = ExternalServices.GetMeValoreGlicemico(time.ToString());

            await context.PostAsync($"La tua glicemia è di circa: **{valoreGlicemico} mg/dl**");
        }

        public async Task CreaFluente(IDialogContext context, LuisResult result)
        {
            var carbSemplici = "carboidrati_semplici";
            var carbComplessi = "carboidrati_complessi";
            var fibre = "fibre";
            var acqua = "acqua";
            var isulina = "dosi";



            await context.PostAsync("*Sto calcolando la tua glicemia...*");
            Thread.Sleep(1000);
            var valoreGlicemico = ExternalServices.CreaFluente("180", carbSemplici, "100");

            await context.PostAsync($"La tua glicemia è di circa: **{valoreGlicemico} mg/dl**");
        }

    }

    
    
}
