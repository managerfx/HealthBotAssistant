CREATE TABLE [dbo].[Paziente]
(
	[IdPaziente] bigint NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [Nome] VARCHAR(100) NOT NULL,
	[Cognome] VARCHAR(100) NOT NULL,
	[CodiceFiscale] VARCHAR(16) NOT NULL, 
	[DataNascita] DATETIME NOT NULL, 
    [Username] VARCHAR(30) NULL, 
    [Password] VARCHAR(10) NULL, 
	[ConversationId] VARCHAR(100) NULL, 
	[FromId] VARCHAR(100) NULL, 
	[FromName] VARCHAR(100) NULL,
    [DataPrimoInserimento] DATETIME NOT NULL DEFAULT GETDATE(),
)

