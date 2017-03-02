using HealthBot.Model;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Builder.Luis.Models;
using System;
using System.Threading.Tasks;

namespace HealthBot.Luis.Core
{
    [Serializable]
    public class HumanInteractionsLuisDialog : LuisDialog<object>
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();

        public async Task Saluto(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("Saluti a te!");
        }

        public async Task ComeStai(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("Felice di esistere!");
        }

        public async Task RichiestaInfoPersonaliAlBot(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("Sono un Robot!");
        }


        public async Task CosaSaiFare(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("# Ecco la lista delle cose che so fare");
        }
        

    }

    
    
}
