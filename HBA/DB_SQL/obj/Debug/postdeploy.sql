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
