using System;
using System.Text;
using System.Collections.Generic;
using System.Data.SqlClient;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Tests
{
    [TestClass]
    public class UnitTests
    {
        private SqlConnection connection;
        
        public UnitTests()
        {
            string sqlconnection = "DATA SOURCE=MSSQLServer024;" + "INITIAL CATALOG=Szkola; INTEGRATED SECURITY=SSPI;";
            connection = new SqlConnection(sqlconnection);
            connection.Open();
        }

        [TestMethod]
        public void MedianaTest()
        {
            double wynik = 0;
            try
            {
                SqlCommand command = new SqlCommand("SELECT dbo.Mediana(testv) FROM [dbo].[TEST]", connection);
                SqlDataReader datareader = command.ExecuteReader();
                datareader.Read();
                wynik = (double)datareader[0];
            }
            catch (Exception e)
            {
                Console.Write("Error occurred.");
            }

            Assert.AreEqual(7, wynik, 0.001);
        }

        [TestMethod]
        public void ModaTest()
        {
            double wynik = 0;
            try
            {
                SqlCommand command = new SqlCommand("SELECT dbo.Moda(testv) FROM [dbo].[TEST]", connection);
                SqlDataReader datareader = command.ExecuteReader();
                datareader.Read();
                wynik = (double)datareader[0];
            }
            catch (Exception e) 
            {
                Console.Write("Error occurred.");
            }

            Assert.AreEqual(10, wynik, 0.001);
        }

        [TestMethod]
        public void SredniaGeometrycznaTest()
        {
            double wynik = 0;
            try
            {
                SqlCommand command = new SqlCommand("SELECT dbo.SredniaGeometryczna(testv) FROM [dbo].[TEST]", connection);
                SqlDataReader datareader = command.ExecuteReader();
                datareader.Read();
                wynik = (double)datareader[0];
            }
            catch (Exception e)
            {
                Console.Write("Error occurred.");
            }

            Assert.AreEqual(6.6973, wynik, 0.001);
        }

        [TestMethod]
        public void SredniaHarmonicznaTest()
        {
            double wynik = 0;
            try
            {
                SqlCommand command = new SqlCommand("SELECT dbo.SredniaHarmoniczna(testv) FROM [dbo].[TEST]", connection);
                SqlDataReader datareader = command.ExecuteReader();
                datareader.Read();
                wynik = (double)datareader[0];
            }
            catch (Exception e) 
            {
                Console.Write("Error occurred.");
            }

            Assert.AreEqual(6.17, wynik, 0.001);
        }

        [TestMethod]
        public void SredniaKwadratowaTest()
        {
            double wynik = 0;
            try
            {
                SqlCommand command = new SqlCommand("SELECT dbo.SredniaKwadratowa(testv) FROM [dbo].[TEST]", connection);
                SqlDataReader datareader = command.ExecuteReader();
                datareader.Read();
                wynik = (double)datareader[0];
            }
            catch (Exception e)
            {
                Console.Write("Error occurred.");
            }

            Assert.AreEqual(7.635, wynik, 0.001);
        }
    }
}