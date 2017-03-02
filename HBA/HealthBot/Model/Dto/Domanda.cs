using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HealthBot.Model
{
    [Serializable]
    public class Domanda
    {
        public string TxtDomanda { get; set; }
        public string UniqueID { get; set; }

        public List<Domanda> GetMeDomandeIniziali()
        {
            return new List<Domanda>()
            {
                new Domanda() { TxtDomanda = "Quale è il tuo **nome**?", UniqueID = DomainValues.NomeUtente},
                new Domanda() { TxtDomanda = "Quale è il tuo **cognome**?", UniqueID = DomainValues.CognomeUtente},
                new Domanda() { TxtDomanda = "Scrivi il tuo **CodiceFiscale**?", UniqueID = DomainValues.CodiceFiscaleUtente},
                new Domanda() { TxtDomanda = "A che **ora ti svegli la mattina** solitamente?", UniqueID = DomainValues.OrarioSvegliaUtente},
                new Domanda() { TxtDomanda = "A che **ora pranzi** solitamente?", UniqueID = DomainValues.OrarioPranzoUtente},
                new Domanda() { TxtDomanda =  "A che **ora ceni** solitamente?", UniqueID = DomainValues.OrarioCenaUtente},
                new Domanda() { TxtDomanda = "Quante **volte** al giorno **assumi cibo**?", UniqueID = DomainValues.NumeroPastiAlGiorno}
            };
        }
    }

    [Serializable]
    public static class DomainValues
    {
        public const string NomeUtente = "NMUT";
        public const string CognomeUtente = "CNMUT";
        public const string CodiceFiscaleUtente = "CFUT";
        public const string OrarioSvegliaUtente = "TGETUP";
        public const string OrarioPranzoUtente = "TLUNCH";
        public const string OrarioCenaUtente = "TDINNER";
        public const string NumeroPastiAlGiorno = "NMEALS";
        
    }
}