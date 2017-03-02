using HealthBot.Luis.Core;
using Microsoft.Bot.Builder.Dialogs;
using Microsoft.Bot.Builder.Luis;
using Microsoft.Bot.Builder.Luis.Models;
using System;
using System.Threading.Tasks;

namespace HealthBot.Luis
{
    [LuisModel("1c24ef12-a404-41b2-aa95-eb3e31e0eb83", "fd9540a1b30f4596a759ff39754939b5")]

    [Serializable]
    public class LuisAdapter : LuisDialog<object>
    {
        [LuisIntent("None")]
        public async Task None(IDialogContext context, LuisResult result)
        {
            await context.PostAsync("Scusa, non ho capito!");
            context.Wait(MessageReceived);
        }

        #region Consigli
        [LuisIntent("CO_ComeAbbassareGlicemia")]
        public async Task ConsigliAbbassareGlicemia(IDialogContext context, LuisResult result)
        {
            var consiglio = new ConsigliLuisDialog();
            await consiglio.ConsigliAbbassareGlicemia(context, result);
            context.Wait(MessageReceived);

        }

        [LuisIntent("CO_ComeAlzareGlicemia")]
        public async Task ConsigliAlzareGlicemia(IDialogContext context, LuisResult result)
        {
            var consiglio = new ConsigliLuisDialog();
            await consiglio.ConsigliAlzareGlicemia(context, result);
            context.Wait(MessageReceived);

        }
        #endregion Consigli

        #region Human Interactions
        [LuisIntent("HI_Saluto")]
        public async Task Saluto(IDialogContext context, LuisResult result)
        {
            var humanInteractions = new HumanInteractionsLuisDialog();
            await humanInteractions.Saluto(context, result);
            context.Wait(MessageReceived);
        }

        [LuisIntent("HI_ComeStai")]
        public async Task ComeStai(IDialogContext context, LuisResult result)
        {
            var humanInteractions = new HumanInteractionsLuisDialog();
            await humanInteractions.ComeStai(context, result);
            context.Wait(MessageReceived);

        }

        [LuisIntent("HI_RichiestaInfoPersonaliAlBot")]
        public async Task RichiestaInfoPersonaliAlBot(IDialogContext context, LuisResult result)
        {
            var humanInteractions = new HumanInteractionsLuisDialog();
            await humanInteractions.RichiestaInfoPersonaliAlBot(context, result);
            context.Wait(MessageReceived);

        }


        [LuisIntent("HI_RichiestaCosaSaiFare")]
        public async Task CosaSaiFare(IDialogContext context, LuisResult result)
        {
            var humanInteractions = new HumanInteractionsLuisDialog();
            await humanInteractions.CosaSaiFare(context, result);
            context.Wait(MessageReceived);

        }

        #endregion

        #region Knowledge Base
        [LuisIntent("CalcolaGlicemia")]
        public async Task RichiediCalcoloGlicemia(IDialogContext context, LuisResult result)
        {
            var knowledgeBase = new KbLuisDialog();
            await knowledgeBase.RichiediCalcoloGlicemia(context, result);
            context.Wait(MessageReceived);

        }

        [LuisIntent("CreaFluente")]
        public async Task CreaFluente(IDialogContext context, LuisResult result)
        {
            var knowledgeBase = new KbLuisDialog();
            await knowledgeBase.CreaFluente(context, result);
            context.Wait(MessageReceived);

        }

        #endregion

        #region Gestore Operazioni

        [LuisIntent("QuestionarioIntroduttivo")]
        public async Task AvvioQuestionarioConoscitivo(IDialogContext context, LuisResult result)
        {
            var gestore = new GestoreLuisDialog();
            await gestore.AvvioQuestionarioConoscitivo(context, result);
            //context.Wait(MessageReceived);

        }

        [LuisIntent("GetCarboidrati")]
        public async Task GetCarboidrati(IDialogContext context, LuisResult result)
        {
            var gestore = new GestoreLuisDialog();
            await gestore.GetCarboidrati(context, result);
            context.Wait(MessageReceived);

        }

        [LuisIntent("GetProteine")]
        public async Task GetProteine(IDialogContext context, LuisResult result)
        {
            var gestore = new GestoreLuisDialog();
            await gestore.GetProteine(context, result);
            context.Wait(MessageReceived);

        }

        [LuisIntent("GetFibre")]
        public async Task GetFibre(IDialogContext context, LuisResult result)
        {
            var gestore = new GestoreLuisDialog();
            await gestore.GetFibre(context, result);
            context.Wait(MessageReceived);

        }

        [LuisIntent("GetAcqua")]
        public async Task GetAcqua(IDialogContext context, LuisResult result)
        {
            var gestore = new GestoreLuisDialog();
            await gestore.GetAcqua(context, result);
            context.Wait(MessageReceived);
        }


        #endregion

    }
}
