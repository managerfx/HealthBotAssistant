﻿/*
Deployment script for HealthAssistant

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "HealthAssistant"
:setvar DefaultFilePrefix "HealthAssistant"
:setvar DefaultDataPath ""
:setvar DefaultLogPath ""

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
PRINT N'Rename refactoring operation with key 5c6cabd5-c61c-4513-b83f-b627a567613f is skipped, element [dbo].[Medico].[Nome] (SqlSimpleColumn) will not be renamed to Cognome';


GO
PRINT N'Rename refactoring operation with key 86952e1f-f667-4082-97a4-6149801aad45 is skipped, element [dbo].[Paziente].[Id] (SqlSimpleColumn) will not be renamed to ProgPaziente';


GO
PRINT N'Rename refactoring operation with key 74a8ecd6-abd4-4cb5-8106-0de5b5449567, 6f4a9edd-3fd8-4437-b2dc-5f8ccded801b, 1346ad1d-1ed6-498b-93d8-1c04c3b800c7 is skipped, element [dbo].[Paziente].[DataNascita] (SqlSimpleColumn) will not be renamed to TelefonoCellulare';


GO
PRINT N'Rename refactoring operation with key 8323c5dc-32ca-4625-b351-4ca1f4b1e848, dc2e657d-4329-431a-8977-a6ca4ef591d9 is skipped, element [dbo].[Paziente].[ViaResidenza] (SqlSimpleColumn) will not be renamed to Nazionalita';


GO
PRINT N'Rename refactoring operation with key d9457104-ad3c-49a9-8a2d-5d44072cdfab is skipped, element [dbo].[Medico].[Id] (SqlSimpleColumn) will not be renamed to ProgMedico';


GO
PRINT N'Rename refactoring operation with key 426ebab8-b202-4191-a045-293bea892407 is skipped, element [dbo].[Medico].[C] (SqlSimpleColumn) will not be renamed to Nome';


GO
PRINT N'Rename refactoring operation with key 32232aae-5883-4e86-9e88-211cd880711e, 142d5467-c054-4923-8fac-6e9921ff72c8 is skipped, element [dbo].[Medico].[Via] (SqlSimpleColumn) will not be renamed to ViaStudioMedico';


GO
PRINT N'Rename refactoring operation with key db1c430c-887d-4f26-8c68-5c214f37204f is skipped, element [dbo].[Medico].[TelefonoUfficio] (SqlSimpleColumn) will not be renamed to TelefonoStudioMedico';


GO
PRINT N'Rename refactoring operation with key 73cf49f1-7d82-48a0-96f3-7ea3e83aface is skipped, element [dbo].[Appuntamento].[Id] (SqlSimpleColumn) will not be renamed to ProgAppuntamento';


GO
PRINT N'Rename refactoring operation with key 4acd8fbc-a27c-4989-a0cb-746dc7e261a0 is skipped, element [dbo].[Appuntamento].[DataAppuntamento] (SqlSimpleColumn) will not be renamed to DataOraAppuntamento';


GO
PRINT N'Rename refactoring operation with key d3cc5890-0118-484d-a86c-38ffeb99503c, 9b539e3f-8d68-477f-ac06-df988a42c446, 5a1adf83-b079-4def-b8a5-59ea2aa18685 is skipped, element [dbo].[OrariDiVisitaMedico].[Id] (SqlSimpleColumn) will not be renamed to ProgOrarioDiVisita';


GO
PRINT N'Rename refactoring operation with key 07d54908-8394-4e94-86af-6b84d45b44f8, 697c8095-0bdf-42ff-b008-bd599aef566e is skipped, element [dbo].[HistoryChat].[Id] (SqlSimpleColumn) will not be renamed to ProgHistoryChat';


GO
PRINT N'Rename refactoring operation with key 8c353d39-9c71-40e1-b370-66683253ed47 is skipped, element [dbo].[HistoryChat].[C] (SqlSimpleColumn) will not be renamed to ChatText';


GO
PRINT N'Rename refactoring operation with key 99293ec4-b157-4abd-9162-522ac4a08d45, d5caa91c-b519-400c-b6c7-f0e930dcdd7b is skipped, element [dbo].[Appuntamento].[ProgDettaglio] (SqlSimpleColumn) will not be renamed to ProgDiagnosi';


GO
PRINT N'Rename refactoring operation with key d9afd1ea-746b-41bc-af64-3d49d78b43ef is skipped, element [dbo].[Appuntamento].[ProgDettaglioCura] (SqlSimpleColumn) will not be renamed to ProgCura';


GO
PRINT N'Rename refactoring operation with key 532d2e05-abdc-4869-a98b-824cba579c92 is skipped, element [dbo].[Diagnosi].[Id] (SqlSimpleColumn) will not be renamed to ProgDiagnosi';


GO
PRINT N'Rename refactoring operation with key 85540336-55df-4ee6-b97d-e049032efe31 is skipped, element [dbo].[Diagnosi].[ProgMedico] (SqlSimpleColumn) will not be renamed to ProgAppuntamento';


GO
PRINT N'Rename refactoring operation with key e6fc3fea-a1d3-4a10-9fac-8a5fea14754f is skipped, element [dbo].[Diagnosi].[Diagnosi] (SqlSimpleColumn) will not be renamed to DiagnosiMedico';


GO
PRINT N'Rename refactoring operation with key 23d92b2e-b144-4db7-a902-ce8a40f80cd9 is skipped, element [dbo].[Appuntamento].[Colore] (SqlSimpleColumn) will not be renamed to ColoreSintomatologia';


GO
PRINT N'Rename refactoring operation with key 79d74bd4-3bbc-4294-8e3c-419836a32a93 is skipped, element [dbo].[Diagnosi].[Sintomi] (SqlSimpleColumn) will not be renamed to Sintomi ';


GO
PRINT N'Rename refactoring operation with key 98397191-0da8-43ab-a90f-37c69e271449 is skipped, element [dbo].[Sintomo].[Id] (SqlSimpleColumn) will not be renamed to ProgSintomo';


GO
PRINT N'Rename refactoring operation with key de141902-bcc7-4070-9f10-17c7b7ef7adc is skipped, element [dbo].[Sintomatiche].[Id] (SqlSimpleColumn) will not be renamed to ProgSintomatiche';


GO
PRINT N'Rename refactoring operation with key 2676df36-9643-41d3-a927-d2e0513fc1c8 is skipped, element [dbo].[Sintomatiche].[Prog] (SqlSimpleColumn) will not be renamed to ProgAppuntamento';


GO
PRINT N'Rename refactoring operation with key 111c6854-60de-4948-a472-73d676350b67 is skipped, element [dbo].[Cura].[Id] (SqlSimpleColumn) will not be renamed to ProgCura';


GO
PRINT N'Rename refactoring operation with key babc864a-0494-4bfc-9072-b7383ac8c060, b76a1ea3-b725-404f-9d4d-2dbdb7ea97bf, f10ba86a-9821-4825-9810-ad258676f5d9 is skipped, element [dbo].[Cura].[Farmaco] (SqlSimpleColumn) will not be renamed to ProgRicettaMedica';


GO
PRINT N'Rename refactoring operation with key 2dcabfe2-3921-4c9e-b366-e81875ddebc2 is skipped, element [dbo].[RicettaMedica].[Id] (SqlSimpleColumn) will not be renamed to ProgRicetta';


GO
PRINT N'Rename refactoring operation with key c6e76239-40a4-41c8-81c7-3acea48704d1 is skipped, element [dbo].[RicettaMedica].[Pr] (SqlSimpleColumn) will not be renamed to ProgCura';


GO
PRINT N'Rename refactoring operation with key 5e4519dc-7408-48a1-8a3f-7519fc1e2312 is skipped, element [dbo].[RicettaMedica].[CodiceFarmacho] (SqlSimpleColumn) will not be renamed to CodiceFarmaco';


GO
PRINT N'Rename refactoring operation with key 67dd6170-3380-4635-a206-9c2c9a65b0cc is skipped, element [dbo].[Medico].[ProgOrariDiVisita] (SqlSimpleColumn) will not be renamed to ProgOrarioDiVisita';


GO
PRINT N'Creating [dbo].[DiarioPaziente]...';


GO
CREATE TABLE [dbo].[DiarioPaziente] (
    [ProgEvento]         BIGINT       IDENTITY (1, 1) NOT NULL,
    [IdPaziente]         BIGINT       NOT NULL,
    [Chiave]             VARCHAR (50) NOT NULL,
    [Valore]             VARCHAR (50) NOT NULL,
    [DataOraInserimento] DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([ProgEvento] ASC)
);


GO
PRINT N'Creating [dbo].[FenotipoPaziente]...';


GO
CREATE TABLE [dbo].[FenotipoPaziente] (
    [ProgFenotipo]       BIGINT       IDENTITY (1, 1) NOT NULL,
    [IdPaziente]         BIGINT       NOT NULL,
    [Chiave]             VARCHAR (50) NOT NULL,
    [Valore]             VARCHAR (50) NOT NULL,
    [DataOraInserimento] DATETIME     NOT NULL,
    PRIMARY KEY CLUSTERED ([ProgFenotipo] ASC)
);


GO
PRINT N'Creating [dbo].[MessageLogging]...';


GO
CREATE TABLE [dbo].[MessageLogging] (
    [ProgLog]               BIGINT   IDENTITY (1, 1) NOT NULL,
    [IdPaziente]            BIGINT   NOT NULL,
    [MessageInput]          TEXT     NOT NULL,
    [MessageOutput]         TEXT     NULL,
    [DataOraInserimento]    DATETIME NOT NULL,
    [IsMessaggioNonGestito] BIT      NULL,
    PRIMARY KEY CLUSTERED ([ProgLog] ASC)
);


GO
PRINT N'Creating [dbo].[Paziente]...';


GO
CREATE TABLE [dbo].[Paziente] (
    [IdPaziente]           BIGINT        IDENTITY (1, 1) NOT NULL,
    [Nome]                 VARCHAR (100) NOT NULL,
    [Cognome]              VARCHAR (100) NOT NULL,
    [CodiceFiscale]        VARCHAR (16)  NOT NULL,
    [DataNascita]          DATETIME      NOT NULL,
    [Username]             VARCHAR (30)  NULL,
    [Password]             VARCHAR (10)  NULL,
    [DataPrimoInserimento] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([IdPaziente] ASC)
);


GO
PRINT N'Creating [dbo].[ValoriNutrizionali]...';


GO
CREATE TABLE [dbo].[ValoriNutrizionali] (
    [Nome]                 VARCHAR (100)  NOT NULL,
    [Pezzi]                INT            NOT NULL,
    [Grammi]               DECIMAL (5, 2) NOT NULL,
    [CarboidratiSemplici]  DECIMAL (5, 2) NOT NULL,
    [CarboidratiComplessi] DECIMAL (5, 2) NOT NULL,
    [Fibre]                DECIMAL (5, 2) NOT NULL,
    [Proteine]             DECIMAL (5, 2) NOT NULL,
    [Acqua]                DECIMAL (5, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([Nome] ASC)
);


GO
PRINT N'Creating unnamed constraint on [dbo].[DiarioPaziente]...';


GO
ALTER TABLE [dbo].[DiarioPaziente]
    ADD DEFAULT GETDATE() FOR [DataOraInserimento];


GO
PRINT N'Creating unnamed constraint on [dbo].[FenotipoPaziente]...';


GO
ALTER TABLE [dbo].[FenotipoPaziente]
    ADD DEFAULT GETDATE() FOR [DataOraInserimento];


GO
PRINT N'Creating unnamed constraint on [dbo].[MessageLogging]...';


GO
ALTER TABLE [dbo].[MessageLogging]
    ADD DEFAULT 0 FOR [IsMessaggioNonGestito];


GO
PRINT N'Creating unnamed constraint on [dbo].[Paziente]...';


GO
ALTER TABLE [dbo].[Paziente]
    ADD DEFAULT GETDATE() FOR [DataPrimoInserimento];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 1 FOR [Pezzi];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 0 FOR [Grammi];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 0 FOR [CarboidratiSemplici];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 0 FOR [CarboidratiComplessi];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 0 FOR [Fibre];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 0 FOR [Proteine];


GO
PRINT N'Creating unnamed constraint on [dbo].[ValoriNutrizionali]...';


GO
ALTER TABLE [dbo].[ValoriNutrizionali]
    ADD DEFAULT 0 FOR [Acqua];


GO
PRINT N'Creating [dbo].[fk_DiarioPaziente_Paziente_IdPaziente]...';


GO
ALTER TABLE [dbo].[DiarioPaziente] WITH NOCHECK
    ADD CONSTRAINT [fk_DiarioPaziente_Paziente_IdPaziente] FOREIGN KEY ([IdPaziente]) REFERENCES [dbo].[Paziente] ([IdPaziente]);


GO
PRINT N'Creating [dbo].[fk_FenotipoPaziente_Paziente_IdPaziente]...';


GO
ALTER TABLE [dbo].[FenotipoPaziente] WITH NOCHECK
    ADD CONSTRAINT [fk_FenotipoPaziente_Paziente_IdPaziente] FOREIGN KEY ([IdPaziente]) REFERENCES [dbo].[Paziente] ([IdPaziente]);


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* VALORI NUTRIZIONALI */
USE [HealthAssistant]
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Arancia', 1, CAST(150.00 AS Decimal(5, 2)), CAST(14.02 AS Decimal(5, 2)), CAST(3.60 AS Decimal(5, 2)), CAST(3.60 AS Decimal(5, 2)), CAST(1.40 AS Decimal(5, 2)), CAST(130.12 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Banana', 1, CAST(100.00 AS Decimal(5, 2)), CAST(12.23 AS Decimal(5, 2)), CAST(10.61 AS Decimal(5, 2)), CAST(2.60 AS Decimal(5, 2)), CAST(1.09 AS Decimal(5, 2)), CAST(74.91 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Bicchiere di acqua', 1, CAST(300.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(300.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Bicchiere di latte', 1, CAST(200.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(9.36 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(6.60 AS Decimal(5, 2)), CAST(178.66 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Biscotti', 6, CAST(50.00 AS Decimal(5, 2)), CAST(20.50 AS Decimal(5, 2)), CAST(14.83 AS Decimal(5, 2)), CAST(1.40 AS Decimal(5, 2)), CAST(2.80 AS Decimal(5, 2)), CAST(1.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Bistecca di vitello', 1, CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(20.20 AS Decimal(5, 2)), CAST(75.94 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Caramella al miele', 1, CAST(5.00 AS Decimal(5, 2)), CAST(5.13 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Carota', 1, CAST(50.00 AS Decimal(5, 2)), CAST(2.37 AS Decimal(5, 2)), CAST(2.42 AS Decimal(5, 2)), CAST(1.40 AS Decimal(5, 2)), CAST(0.46 AS Decimal(5, 2)), CAST(44.14 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Cola', 1, CAST(150.00 AS Decimal(5, 2)), CAST(13.45 AS Decimal(5, 2)), CAST(0.89 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(135.46 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Cornetto', 1, CAST(100.00 AS Decimal(5, 2)), CAST(11.26 AS Decimal(5, 2)), CAST(34.54 AS Decimal(5, 2)), CAST(2.60 AS Decimal(5, 2)), CAST(8.20 AS Decimal(5, 2)), CAST(23.20 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Fette biscottate con marmellata', 3, CAST(45.00 AS Decimal(5, 2)), CAST(10.51 AS Decimal(5, 2)), CAST(18.66 AS Decimal(5, 2)), CAST(0.87 AS Decimal(5, 2)), CAST(3.07 AS Decimal(5, 2)), CAST(9.60 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Fette biscottate con nutella', 3, CAST(45.00 AS Decimal(5, 2)), CAST(12.43 AS Decimal(5, 2)), CAST(18.54 AS Decimal(5, 2)), CAST(0.93 AS Decimal(5, 2)), CAST(4.06 AS Decimal(5, 2)), CAST(1.47 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Formaggio grana', 1, CAST(50.00 AS Decimal(5, 2)), CAST(1.85 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(17.75 AS Decimal(5, 2)), CAST(15.25 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Gelato alla frutta', 1, CAST(100.00 AS Decimal(5, 2)), CAST(18.04 AS Decimal(5, 2)), CAST(20.18 AS Decimal(5, 2)), CAST(0.75 AS Decimal(5, 2)), CAST(5.14 AS Decimal(5, 2)), CAST(45.55 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Insalata', 1, CAST(75.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(2.73 AS Decimal(5, 2)), CAST(1.27 AS Decimal(5, 2)), CAST(0.63 AS Decimal(5, 2)), CAST(70.87 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Mela', 1, CAST(150.00 AS Decimal(5, 2)), CAST(15.59 AS Decimal(5, 2)), CAST(5.13 AS Decimal(5, 2)), CAST(3.60 AS Decimal(5, 2)), CAST(0.39 AS Decimal(5, 2)), CAST(128.34 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pane', 1, CAST(75.00 AS Decimal(5, 2)), CAST(0.62 AS Decimal(5, 2)), CAST(36.88 AS Decimal(5, 2)), CAST(2.02 AS Decimal(5, 2)), CAST(6.60 AS Decimal(5, 2)), CAST(26.77 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Panino con hamburger', 1, CAST(150.00 AS Decimal(5, 2)), CAST(5.50 AS Decimal(5, 2)), CAST(27.71 AS Decimal(5, 2)), CAST(1.65 AS Decimal(5, 2)), CAST(23.52 AS Decimal(5, 2)), CAST(73.21 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pasta al pomodoro', 1, CAST(100.00 AS Decimal(5, 2)), CAST(4.00 AS Decimal(5, 2)), CAST(10.22 AS Decimal(5, 2)), CAST(0.90 AS Decimal(5, 2)), CAST(2.22 AS Decimal(5, 2)), CAST(82.15 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pasta e legumi', 1, CAST(100.00 AS Decimal(5, 2)), CAST(12.00 AS Decimal(5, 2)), CAST(21.04 AS Decimal(5, 2)), CAST(4.74 AS Decimal(5, 2)), CAST(8.36 AS Decimal(5, 2)), CAST(51.53 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pastina in brodo', 1, CAST(250.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(6.17 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(2.72 AS Decimal(5, 2)), CAST(236.11 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Patatine fritte', 1, CAST(100.00 AS Decimal(5, 2)), CAST(0.21 AS Decimal(5, 2)), CAST(29.71 AS Decimal(5, 2)), CAST(2.70 AS Decimal(5, 2)), CAST(2.12 AS Decimal(5, 2)), CAST(61.08 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pera', 1, CAST(100.00 AS Decimal(5, 2)), CAST(9.80 AS Decimal(5, 2)), CAST(5.66 AS Decimal(5, 2)), CAST(3.10 AS Decimal(5, 2)), CAST(0.38 AS Decimal(5, 2)), CAST(83.71 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Petto di pollo', 1, CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(74.76 AS Decimal(5, 2)), CAST(23.09 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pezzo di pizza margherita', 1, CAST(150.00 AS Decimal(5, 2)), CAST(19.35 AS Decimal(5, 2)), CAST(60.00 AS Decimal(5, 2)), CAST(5.70 AS Decimal(5, 2)), CAST(8.40 AS Decimal(5, 2)), CAST(58.95 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Pezzo di torta', 1, CAST(100.00 AS Decimal(5, 2)), CAST(21.80 AS Decimal(5, 2)), CAST(3.70 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(5.50 AS Decimal(5, 2)), CAST(45.60 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Riso al sugo', 1, CAST(115.00 AS Decimal(5, 2)), CAST(13.63 AS Decimal(5, 2)), CAST(15.65 AS Decimal(5, 2)), CAST(0.22 AS Decimal(5, 2)), CAST(2.52 AS Decimal(5, 2)), CAST(81.50 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Spigola', 1, CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(23.63 AS Decimal(5, 2)), CAST(72.14 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Succo di arancia', 1, CAST(150.00 AS Decimal(5, 2)), CAST(12.39 AS Decimal(5, 2)), CAST(2.91 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(0.90 AS Decimal(5, 2)), CAST(132.75 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Succo di mela', 1, CAST(150.00 AS Decimal(5, 2)), CAST(13.50 AS Decimal(5, 2)), CAST(3.15 AS Decimal(5, 2)), CAST(0.60 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(132.45 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Tazza di latte e zucchero', 1, CAST(105.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(4.68 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(3.30 AS Decimal(5, 2)), CAST(89.33 AS Decimal(5, 2)))
GO
INSERT [dbo].[ValoriNutrizionali] ([Nome], [Pezzi], [Grammi], [CarboidratiSemplici], [CarboidratiComplessi], [Fibre], [Proteine], [Acqua]) VALUES (N'Uovo strapazzato', 1, CAST(50.00 AS Decimal(5, 2)), CAST(0.86 AS Decimal(5, 2)), CAST(0.23 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(5.54 AS Decimal(5, 2)), CAST(38.57 AS Decimal(5, 2)))
GO

GO
