﻿using log4net;
using System;
using System.Collections.Generic;

namespace HealthBot.Miscellaneous
{
    static class CodiceFiscale
    {
        private static readonly log4net.ILog log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        public static bool VerificaCodiceFiscale(string Codice)
        {
            // Dato un Codice Fiscale verifica il codice di controllo
            // Input: il Codice Fiscale da verificare, 16 caratteri
            // Output: true/false
            // 2010.12.05
            Codice = Codice.ToUpper();
            if (Codice.Length != 16)
                return false; // errore
            else
            {
                if (Codice.Substring(15, 1) ==
                    CalcolaCodiceControllo(Codice.Substring(0, 15)))
                    return true;
                else
                    return false;
            }
        }

        public static DateTime GetDateFromFiscalCode(string fiscalCode)
        {
            try
            {
                Dictionary<string, string> month = new Dictionary<string, string>();
                // To Upper
                fiscalCode = fiscalCode.ToUpper();
                month.Add("A", "01");
                month.Add("B", "02");
                month.Add("C", "03");
                month.Add("D", "04");
                month.Add("E", "05");
                month.Add("H", "06");
                month.Add("L", "07");
                month.Add("M", "08");
                month.Add("P", "09");
                month.Add("R", "10");
                month.Add("S", "11");
                month.Add("T", "12");
                // Get Date
                string date = fiscalCode.Substring(6, 5);
                int y = int.Parse(date.Substring(0, 2));
                string yy = ((y < 9) ? "20" : "19") +y.ToString("00");
                string m = month[date.Substring(2, 1)];
                int d = int.Parse(date.Substring(3, 2));
                if (d > 31)
                    d -= 40;
                var strD = d.ToString("00");
                // Return Date
                var strDate = string.Format("{0}/{1}/{2}", strD, m, yy);
                return DateTime.ParseExact(strDate, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            }
            catch (Exception)
            {
                log.Error("Errore nel recupero della data di nascita a partire dal codice fiscale.");
                return DateTime.MinValue;
            }
        }


        #region PrivateMethods
        private static string CalcolaCodiceControllo(string Codice)
        {
            // Calcola il codice di controllo del Codice Fiscale
            // Input: i primi 15 caratteri del Codice Fiscale
            // Output: il codice di controllo
            // 2010.12.05
            int Contatore = 0;
            Codice = Codice.ToUpper();
            if (Codice.Length != 15)
                return "0"; // zero: errore
            else
            {
                for (int i = 0; i < Codice.Length; i++)
                {
                    Contatore += ValoreDelCarattere(Codice.Substring(i, 1), i);
                }
                Contatore %= 26; // si considera il resto
                return Convert.ToChar(Contatore + 65).ToString();
            }
        }
        private static int ValoreDelCarattere(string Carattere, int Posizione)
        {
            int Valore = 0;
            switch (Carattere)
            {
                case "A":
                case "0":
                    if ((Posizione % 2) == 0)
                        Valore = 1;
                    else
                        Valore = 0;
                    break;
                case "B":
                case "1":
                    if ((Posizione % 2) == 0)
                        Valore = 0;
                    else
                        Valore = 1;
                    break;
                case "C":
                case "2":
                    if ((Posizione % 2) == 0)
                        Valore = 5;
                    else
                        Valore = 2;
                    break;
                case "D":
                case "3":
                    if ((Posizione % 2) == 0)
                        Valore = 7;
                    else
                        Valore = 3;
                    break;
                case "E":
                case "4":
                    if ((Posizione % 2) == 0)
                        Valore = 9;
                    else
                        Valore = 4;
                    break;
                case "F":
                case "5":
                    if ((Posizione % 2) == 0)
                        Valore = 13;
                    else
                        Valore = 5;
                    break;
                case "G":
                case "6":
                    if ((Posizione % 2) == 0)
                        Valore = 15;
                    else
                        Valore = 6;
                    break;
                case "H":
                case "7":
                    if ((Posizione % 2) == 0)
                        Valore = 17;
                    else
                        Valore = 7;
                    break;
                case "I":
                case "8":
                    if ((Posizione % 2) == 0)
                        Valore = 19;
                    else
                        Valore = 8;
                    break;
                case "J":
                case "9":
                    if ((Posizione % 2) == 0)
                        Valore = 21;
                    else
                        Valore = 9;
                    break;
                case "K":
                    if ((Posizione % 2) == 0)
                        Valore = 2;
                    else
                        Valore = 10;
                    break;
                case "L":
                    if ((Posizione % 2) == 0)
                        Valore = 4;
                    else
                        Valore = 11;
                    break;
                case "M":
                    if ((Posizione % 2) == 0)
                        Valore = 18;
                    else
                        Valore = 12;
                    break;
                case "N":
                    if ((Posizione % 2) == 0)
                        Valore = 20;
                    else
                        Valore = 13;
                    break;
                case "O":
                    if ((Posizione % 2) == 0)
                        Valore = 11;
                    else
                        Valore = 14;
                    break;
                case "P":
                    if ((Posizione % 2) == 0)
                        Valore = 3;
                    else
                        Valore = 15;
                    break;
                case "Q":
                    if ((Posizione % 2) == 0)
                        Valore = 6;
                    else
                        Valore = 16;
                    break;
                case "R":
                    if ((Posizione % 2) == 0)
                        Valore = 8;
                    else
                        Valore = 17;
                    break;
                case "S":
                    if ((Posizione % 2) == 0)
                        Valore = 12;
                    else
                        Valore = 18;
                    break;
                case "T":
                    if ((Posizione % 2) == 0)
                        Valore = 14;
                    else
                        Valore = 19;
                    break;
                case "U":
                    if ((Posizione % 2) == 0)
                        Valore = 16;
                    else
                        Valore = 20;
                    break;
                case "V":
                    if ((Posizione % 2) == 0)
                        Valore = 10;
                    else
                        Valore = 21;
                    break;
                case "W":
                    if ((Posizione % 2) == 0)
                        Valore = 22;
                    else
                        Valore = 22;
                    break;
                case "X":
                    if ((Posizione % 2) == 0)
                        Valore = 25;
                    else
                        Valore = 23;
                    break;
                case "Y":
                    if ((Posizione % 2) == 0)
                        Valore = 24;
                    else
                        Valore = 24;
                    break;
                case "Z":
                    if ((Posizione % 2) == 0)
                        Valore = 23;
                    else
                        Valore = 25;
                    break;
                default:
                    Valore = 0;
                    break;
            }
            return Valore;
        }
        #endregion
    }
}


