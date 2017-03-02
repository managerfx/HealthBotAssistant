CREATE TABLE [dbo].[MessageLogging]
(
	[ProgLog] bigint NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [IdPaziente] bigint NOT NULL, 
    [MessageInput] TEXT NOT NULL, 
	[MessageOutput] TEXT NULL, 
    [DataOraInserimento] DATETIME NOT NULL,
	[IsMessaggioNonGestito] BIT DEFAULT 0

	--CONSTRAINT fk_MessageLogging_Paziente_IdPaziente FOREIGN KEY (IdPaziente) REFERENCES Paziente(IdPaziente)

)
