using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using Microsoft.Bot.Connector;
using Microsoft.Bot.Builder.Dialogs;
using HealthBot.Model;
using log4net;
using HealthBot.Luis;
using HealthBot.Luis.Core;
using HealthBot.Model.Dto;

namespace HealthBot
{
    [BotAuthentication]
    public class MessagesController : ApiController
    {
        /// <summary>
        /// POST: api/Messages
        /// Receive a message from a user and reply to it
        /// </summary>
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public static HealthAssistantEntities db = new HealthAssistantEntities();
        public static Double TempoTrascorsoDaSveglia { get; set; }
        public static Utente CurrentUser { get; set; }


        public async Task<HttpResponseMessage> Post([FromBody]Activity activity)
        {
            //Ogni conversazione ha un ID quindi tenendo traccia di questo id ed associandolo a
            //un profilo paziente posso sapere se è sepre la stessa persona a parlare con me?
            log.DebugFormat($"Channel ID: {activity.Conversation.Id} - attivita: {activity.Type}");
            CurrentUser = new Utente(activity.From.Id, activity.From.Name, activity.Conversation.Id);


             var incomingMessage_ServiceUrl = "http://localhost:3979/api/messages";
             
              var userAccount = new ChannelAccount(name: "Larry", id: "@UV357341");
              var connector = new ConnectorClient(new Uri(incomingMessage_ServiceUrl));
              var conversationId = await connector.Conversations.CreateDirectConversationAsync(botAccount, userAccount);
            
             IMessageActivity message = Activity.CreateMessageActivity();
              message.From = botAccount;
              message.Recipient = userAccount;
              message.Conversation = new ConversationAccount(id: conversationId.Id);
              message.Text = "Hello";
              message.Locale = "it-IT";
              await connector.Conversations.SendToConversationAsync((Activity)message);

            var sveglia = CurrentUser.OrarioSveglia;
            TimeSpan ts = new TimeSpan(07, 00, 0);
            TimeSpan localTime = activity.LocalTimestamp.Value.TimeOfDay;
            TempoTrascorsoDaSveglia = (localTime - ts).TotalMinutes;


            var src = DateTime.Now;
            
            if (activity.Type == ActivityTypes.Message)
            {
                #region help
                // return our reply to the user
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"*Testo corsivo*")); //Corsivo
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"~~Testo barrato~~")); //Barrato
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"# H1 testo h1")); //H1
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"* lista non ordinata * lista non ordinata")); //lista
                //
                //
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"1. lista ordinata 2. lista ordinata")); //lista
                //
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"`text`")); //console
                //
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"> rientro")); //lista
                //
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"[bing](http://bing.com)")); //link to bing
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"![duck](http://aka.ms/Fo983c)")); //link to bing
                //await connector.Conversations.ReplyToActivityAsync(activity.CreateReply($"**Testo Grassetto**")); //Grassetto

                #region Carousel

                //Activity replyToConversation = activity.CreateReply("Should go to conversation, with a carousel");
                //replyToConversation.Recipient = activity.From;
                //replyToConversation.Type = "message";
                //replyToConversation.AttachmentLayout = AttachmentLayoutTypes.Carousel;
                //replyToConversation.Attachments = new List<Attachment>();
                //Dictionary<string, string> cardContentList = new Dictionary<string, string>();
                //cardContentList.Add("PigLatin", "http://simpleicon.com/wp-content/uploads/user1.png");
                //cardContentList.Add("Pork Shoulder", "http://simpleicon.com/wp-content/uploads/user1.png");
                //cardContentList.Add("Bacon", "http://simpleicon.com/wp-content/uploads/user1.png");
                //foreach (KeyValuePair<string, string> cardContent in cardContentList)
                //{
                //    List<CardImage> cardImages = new List<CardImage>();
                //    cardImages.Add(new CardImage(url: cardContent.Value));
                //    List<CardAction> cardButtons = new List<CardAction>();
                //    CardAction plButton = new CardAction()
                //    {
                //        Value = $"https://en.wikipedia.org/wiki/{cardContent.Key}",
                //        Type = "openUrl",
                //        Title = "WikiPedia Page"
                //    };
                //    cardButtons.Add(plButton);
                //    HeroCard plCard = new HeroCard()
                //    {
                //        Title = $"I'm a hero card about {cardContent.Key}",
                //        Subtitle = $"{cardContent.Key} Wikipedia Page",
                //        Images = cardImages,
                //        Buttons = cardButtons
                //    };
                //    Attachment plAttachment = plCard.ToAttachment();
                //    replyToConversation.Attachments.Add(plAttachment);
                //}
                //replyToConversation.AttachmentLayout = AttachmentLayoutTypes.Carousel;
                //var reply = await connector.Conversations.SendToConversationAsync(replyToConversation);
                #endregion






                //Activity replyToConversation = activity.CreateReply("Should go to conversation, sign-in card");
                //replyToConversation.Recipient = activity.From;
                //replyToConversation.Type = "message";
                //replyToConversation.Attachments = new List<Attachment>();
                //List<CardAction> cardButtons = new List<CardAction>();
                //CardAction plButton = new CardAction()
                //{
                //    Value = "https://<OAuthSignInURL>",
                //    Type = "signin",
                //    Title = "Connect"
                //};
                //
                //
                //cardButtons.Add(plButton);
                //SigninCard plCard = new SigninCard("You need to authorize me", cardButtons);
                //Attachment plAttachment = plCard.ToAttachment();
                //replyToConversation.Attachments.Add(plAttachment);
                //var reply = await connector.Conversations.SendToConversationAsync(replyToConversation);


                #endregion

                if (!activity.Text.StartsWith("./"))
                {
                    await Conversation.SendAsync(activity, () => new LuisAdapter());
                }
                else
                {
                    //Gestione command
                }
            }
            else if (activity.Type == ActivityTypes.ContactRelationUpdate)
            {
                if (activity.Action == "add") //Utente ha aggiunto il bot
                {
                    activity.Text = "Ritratta il questionario introduttivo";
                    await Conversation.SendAsync(activity, () => new LuisAdapter());
                }
                #region old
                //await context.PostAsync("Sto per aggiungerti tra i pazienti");
                //VERIFICO CHE L'UTENTE E' GIA CENSITO
                //var paziente = db.Paziente.Where(p => p.Username == activity.From.Id).FirstOrDefault();
                //if (paziente != null)
                //{
                //    var idPaziente = paziente.IdPaziente;
                //    log.DebugFormat($"Loggato paziente ID: {idPaziente}");
                //}
                //else
                //{
                //    var newPaziente = new Paziente();
                //    newPaziente.Username = activity.From.Id;
                //    newPaziente.Password = "";
                //    newPaziente.CodiceFiscale = "LMBFLC89M01A048T";
                //    newPaziente.DataPrimoInserimento = DateTime.Now;
                //    db.Paziente.Add(newPaziente);
                //    db.SaveChanges();
                //
                //    log.DebugFormat($"Aggiunto nuovo paziente ID: {newPaziente.IdPaziente}");
                //}
                #endregion old
            }
            else
            {
                HandleSystemMessage(activity);
            }
            var response = Request.CreateResponse(HttpStatusCode.OK);
            return response;
        }

        private Activity HandleSystemMessage(Activity message)
        {
            if (message.Type == ActivityTypes.DeleteUserData)
            {
                // Implement user deletion here
                // If we handle user deletion, return a real message
            }
            else if (message.Type == ActivityTypes.ConversationUpdate)
            {
                // Handle conversation state changes, like members being added and removed
                // Use Activity.MembersAdded and Activity.MembersRemoved and Activity.Action for info
                // Not available in all channels
            }

            else if (message.Type == ActivityTypes.Typing)
            {
                // Handle knowing tha the user is typing
                // return our reply to the user
                ConnectorClient connector = new ConnectorClient(new Uri(message.ServiceUrl));

                Activity reply = message.CreateReply("stai scrivendo...");
                //await connector.Conversations.ReplyToActivityAsync(reply);

            }
            else if (message.Type == ActivityTypes.Ping)
            {
            }

            return null;
        }



        
    }
}