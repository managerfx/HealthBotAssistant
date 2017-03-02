using Microsoft.Bot.Builder.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using Microsoft.Bot.Connector;

namespace HealthBot
{
    [Serializable]
    public class GestoreLogin : IDialog
    {
        public async Task StartAsync(IDialogContext context)
        {
            context.Wait(ActivityReceivedAsync);
        }

        private async Task ActivityReceivedAsync(IDialogContext context, IAwaitable<object> result)
        {
            var activity = await result as Activity;
            if (activity.Text.Contains("saluto"))
            {
                await context.PostAsync("Ciao a te");
            }
            context.Wait(ActivityReceivedAsync);
        }
    }
    
}