using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthBot.Model.Dto
{
    [Serializable]
    public class Utente
    {
        public static HealthAssistantEntities db = new HealthAssistantEntities();
        public Utente() { }
        public Utente(string fromId, string fromName, string converationId)
        {
            FromId = fromId;
            FromName = fromName;
            ConversationId = converationId;
        }

        public bool IsInizialized { get; private set; }

        public string OrarioSveglia { get;  set; }
        public string  OrarioPranzo { get; set; }
        public string OrarioCena { get; set; }
        public int NumeroPastiGiornalieri { get; set; }
        public long IdPaziente { get; set; }
        public string CodiceFiscale { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public DateTime DataPrimoInserimento { get; set; }
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public DateTime DataNascita { get; set; }
        public string ConversationId { get; set; }
        public string FromId { get; set; }
        public string FromName { get; set; }



        private void Initialize()
        {
            var pa = db.Paziente.Where(p => p.ConversationId == ConversationId).FirstOrDefault();
            if (pa != null)
            {
                IdPaziente = pa.IdPaziente;
                CodiceFiscale = pa.CodiceFiscale;
                Username = pa.Username;
                Password = pa.Password;
                DataPrimoInserimento = pa.DataPrimoInserimento;
                Nome = pa.Nome;
                Cognome = pa.Cognome;
                DataNascita = pa.DataNascita;
                ConversationId = pa.ConversationId;
                FromId = pa.FromId;
                FromName = pa.FromName;

                var fenotipi = pa.FenotipoPaziente;
                if (fenotipi != null && fenotipi.Any())
                { 
                    OrarioSveglia = fenotipi.Where(f => f.Chiave == DomainValues.OrarioSvegliaUtente).FirstOrDefault().Valore;
                    OrarioPranzo = fenotipi.Where(f => f.Chiave == DomainValues.OrarioPranzoUtente).FirstOrDefault().Valore;
                    OrarioCena = fenotipi.Where(f => f.Chiave == DomainValues.OrarioCenaUtente).FirstOrDefault().Valore;
                    NumeroPastiGiornalieri = Convert.ToInt32(fenotipi.Where(f => f.Chiave == DomainValues.NumeroPastiAlGiorno).FirstOrDefault().Valore);
                }
                IsInizialized = true;
            }

        }
    }
}
