using HealthBot.Model;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Builder.Luis.Models;
using System;
using System.Threading.Tasks;

namespace HealthBot.Luis.Core
{
    [Serializable]
    public class ConsigliLuisDialog : LuisDialog<object>
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();

       
        public async Task ConsigliAbbassareGlicemia(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("Vuoi abassare la tua glicemia");
        }

       
        public async Task ConsigliAlzareGlicemia(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("Scusa, non ho capito!");
        }

    }

    
    
}
