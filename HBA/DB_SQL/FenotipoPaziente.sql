CREATE TABLE [dbo].[FenotipoPaziente]
(
	[ProgFenotipo] bigint NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [IdPaziente] bigint NOT NULL, 
    [Chiave] varchar(50) NOT NULL,
    [Valore] varchar(50) NOT NULL,
    [DataOraInserimento] DateTime NOT NULL DEFAULT GETDATE(), 


	CONSTRAINT fk_FenotipoPaziente_Paziente_IdPaziente FOREIGN KEY (IdPaziente) REFERENCES Paziente(IdPaziente)

)
