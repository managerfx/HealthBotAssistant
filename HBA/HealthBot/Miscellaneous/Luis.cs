using Microsoft.Bot.Builder.Luis.Models;
using System.Collections.Generic;
using System.Linq;
using log4net;

namespace HealthBot.Miscellaneous
{
    public static class Luis
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public static string GetValueEntity(this LuisResult result, string nomeProp)
        {

            var entities = new List<EntityRecommendation>(result.Entities);
            if (entities.Any((e) => e.Type == nomeProp))
            {
                var entityRiquested = entities.Where((e) => e.Type == nomeProp).First();
                //var resolutionStr = entityRiquested.Resolution.First().Value ?? null;

                var resolutionStr = entityRiquested.Entity;
                return resolutionStr;
            }
            return null;
        }
    }
}