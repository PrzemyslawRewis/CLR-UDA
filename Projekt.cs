using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

class Program 
{
  public static void wypiszOpcje()
  {
    Console.WriteLine ("Wybierz jedną z opcji programu wpisując odpowiednia cyfrę 0-5:");
    Console.WriteLine("0 - Wyłacz program\n1 - Oblicz medianę\n2 - Oblicz modę");
    Console.WriteLine("3 - Oblicz średnią geometryczną\n4 - Oblicz średnią harmoniczną\n5 - Oblicz średnią kwadratową"); 
  }
  public static void wypiszDane()
  {
    Console.WriteLine ("Wybierz na czym ma zostać użyty agregat poprzez wpisanie odpowiedniej cyfrę 0-3:");
    Console.WriteLine("0 - Powrót \n1 - Wzrost\n2 - Waga\n3 - IQ");
    
  }
  public static void Main (string[] args) 
  {
    Console.WriteLine("Projekt bazy danych II");
    Console.WriteLine("Przetwarzanie własnych agregatów CLR UDA.");
    Console.WriteLine("Przemysław Rewiś");
    string sqlconnection = "DATA SOURCE=MSSQLServer024;" + "INITIAL CATALOG=Szkola; INTEGRATED SECURITY=SSPI;";
    SqlConnection connection = new SqlConnection(sqlconnection);
    while(!false)
    {
      string wybor1="";
      string wybor2="";
      string dane ="";
      string agregat="";
      string opis="";
      
      wypiszOpcje();
      wybor1=Console.ReadLine();
      switch (wybor1)
      {
        case "0":
          Console.WriteLine("Wyłączanie programu...");
          Environment.Exit(0);
          break;
        case "1":
          agregat = "Mediana";
          break;
        case "2":
          agregat = "Moda";
          break;
        case "3":
          agregat = "SredniaGeometryczna";
          break;
        case "4":
          agregat = "SredniaHarmoniczna";
          break;
        case "5":
          agregat = "SredniaKwadratowa";
          break;
        default:
          Console.WriteLine("Wpisz poprawny numer opcji");
          continue;
      }
      wypiszDane();
      wybor2 = Console.ReadLine();
      if (wybor2 == "0")
        continue;
      switch (wybor2)
      {
        case "1":
          dane = "Wzrost";
          opis = " wzrostu";
          break;
        case "2":
          dane = "Waga";
          opis = " wagi";
          break;
        case "3":
          dane = "IQ";
          opis = " IQ";
          break; 
        default:
          Console.WriteLine("Wpisz poprawny numer");
          continue;
      }
      try
      {
        connection.Open();
        SqlCommand command = new SqlCommand("SELECT dbo." + agregat + "(" + dane + ") FROM [Szkola].[dbo].[UCZNIOWIE]", connection);
        SqlDataReader datareader = command.ExecuteReader();
        datareader.Read();
        Console.WriteLine(agregat + opis + " uczniow w szkole wyniosla: ");
        Console.WriteLine(datareader[0]);
      }
      finally
      {
        connection.Close();
      }
    } 
  }
}