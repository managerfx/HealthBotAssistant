CREATE TABLE [dbo].[ValoriNutrizionali]
(
	[Nome] Varchar(100) NOT NULL PRIMARY KEY, 
	[Pezzi] INT NOT NULL DEFAULT 1,
	[Grammi] DECIMAL(5,2) NOT NULL DEFAULT 0, 
    [CarboidratiSemplici] DECIMAL(5,2) NOT NULL DEFAULT 0, 
    [CarboidratiComplessi] DECIMAL(5,2) NOT NULL DEFAULT 0, 
    [Fibre] DECIMAL(5,2) NOT NULL DEFAULT 0,
	[Proteine] DECIMAL(5,2) NOT NULL DEFAULT 0, 
    [Acqua] DECIMAL(5,2) NOT NULL DEFAULT 0
    
)
