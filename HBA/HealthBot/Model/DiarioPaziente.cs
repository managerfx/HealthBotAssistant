//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HealthBot.Model
{
    using System;
    using System.Collections.Generic;
    [Serializable]
    public partial class DiarioPaziente
    {
        public long ProgEvento { get; set; }
        public long IdPaziente { get; set; }
        public string Chiave { get; set; }
        public string Valore { get; set; }
        public System.DateTime DataOraInserimento { get; set; }
    
        public virtual Paziente Paziente { get; set; }
    }
}