using HealthBot.Model;
using log4net;
using Microsoft.Bot.Connector;
using System;
using System.Collections.Generic;
using System.Linq;

namespace HealthBot.Miscellaneous
{
    public static class Utility
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        public static string Truncate(this string value, int maxLength)
        {
            if (string.IsNullOrEmpty(value)) return value;
            return value.Length <= maxLength ? value : value.Substring(0, maxLength);
        }

        public static void LogToDatabase(Activity activity)
        {
            try
            {
                // *************************
                // Log to Database
                // *************************


                string input = String.Format("Channel: {0} - UserId: {1} - UserName: {2} - Created: {3} - Message: {4}",
                    activity.ChannelId, activity.From.Id, activity.From.Name, DateTime.UtcNow, activity.Text.Truncate(500));


                var NewUserLog = new MessageLogging();
                NewUserLog.IdPaziente = 11;
                NewUserLog.IsMessaggioNonGestito = true;
                NewUserLog.MessageInput = input;
                NewUserLog.DataOraInserimento = DateTime.UtcNow;

                db.MessageLogging.Add(NewUserLog);
                db.SaveChanges();
                // Call NumberGuesserDialog
                //await Conversation.SendAsync(activity, () => new NumberGuesserDialog());
            }
            catch (Exception e)
            {
                log.Error(e);
            }

        }

        public static string FirstLetterToUpper(this string str)
        {
            if (str == null) return null;

            if (str.Length > 1)
                return char.ToUpper(str[0]) + str.Substring(1);

            return str.ToUpper();
        }


        public static string GetMeDomandaObjByUniqueId(this List<Domanda> domandeConRisposta, string uniqueId)
        {
            if (domandeConRisposta == null && !domandeConRisposta.Any()) return null;
            return domandeConRisposta.Where(d => d.UniqueID == uniqueId).FirstOrDefault().TxtDomanda;
        }





    }
}