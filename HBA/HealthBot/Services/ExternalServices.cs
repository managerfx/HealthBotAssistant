using log4net;
using System.IO;
using System.Net;
using System.Web.Configuration;

namespace HealthBot
{
    public static class ExternalServices
    {
        private static readonly ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private static string enpointService = WebConfigurationManager.AppSettings["EndPointKnowledgeBase"];

        public static string GetMeValoreGlicemico(string tempoTrascorso)
        {
            log.DebugFormat($"Chiamo il servizio CalcolaGlicemia con valore tempo: {tempoTrascorso}");

            using (WebClient client = new WebClient())
            {
                var uri = enpointService + "/calcolaglicemia";
                client.QueryString["tempo"] = tempoTrascorso;

                try
                {
                    byte[] data = client.DownloadData(uri);
                    using (MemoryStream ms = new MemoryStream(data))
                    {
                        ms.Position = 0; // The StreamReader will read from the current position of the MemoryStream which is currently set at the end of the string we just wrote to it. We need to set the position to 0 in order to read from the beginning.
                        var response = new StreamReader(ms).ReadToEnd();

                        int pFrom = response.IndexOf("<head>") + "<head>".Length;
                        int pTo = response.LastIndexOf("<meta http-equiv=");

                        return response.Substring(pFrom, pTo - pFrom);
                    }
                }
                catch (System.Exception)
                {
                    log.DebugFormat("Server non raggiungibile");
                    return "Errore 500";
                }
            }
        }

        public static string CreaFluente(string tempo, string tipo, string quantita)
        {
            //log.DebugFormat($"Chiamo il servizio CreaFluente con valore tempo: {tempoTrascorso}");

            using (WebClient client = new WebClient())
            {
                var uri = enpointService + "/creafluente";
                client.QueryString["tempo"] = tempo;
                client.QueryString["tipo"] = tipo;
                client.QueryString["quantita"] = quantita;
                try
                {
                    byte[] data = client.DownloadData(uri);
                    using (MemoryStream ms = new MemoryStream(data))
                    {
                        ms.Position = 0; // The StreamReader will read from the current position of the MemoryStream which is currently set at the end of the string we just wrote to it. We need to set the position to 0 in order to read from the beginning.
                        var response = new StreamReader(ms).ReadToEnd();

                        int pFrom = response.IndexOf("<head>") + "<head>".Length;
                        int pTo = response.LastIndexOf("<meta http-equiv=");

                        return response.Substring(pFrom, pTo - pFrom);
                    }
                }
                catch (System.Exception)
                {
                    log.DebugFormat("Server non raggiungibile");
                    return "Errore 500";
                }
            }
        }
    }
}