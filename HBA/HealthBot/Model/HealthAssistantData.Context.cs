﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HealthAssistantEntities : DbContext
    {
        public HealthAssistantEntities()
            : base("name=HealthAssistantEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<DiarioPaziente> DiarioPaziente { get; set; }
        public virtual DbSet<FenotipoPaziente> FenotipoPaziente { get; set; }
        public virtual DbSet<MessageLogging> MessageLogging { get; set; }
        public virtual DbSet<Paziente> Paziente { get; set; }
        public virtual DbSet<ValoriNutrizionali> ValoriNutrizionali { get; set; }
        public virtual DbSet<C__RefactorLog> C__RefactorLog { get; set; }
    }
}