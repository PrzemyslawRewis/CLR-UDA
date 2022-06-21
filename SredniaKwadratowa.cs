using System;
using System.Data;
using Microsoft.SqlServer.Server;
using System.Data.SqlClient;
using System.Data.SqlTypes;


[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.Native)]
public struct SredniaKwadratowa
{
    private double sumaKwadratowLiczb;
    private int licznik;

    public void Init()
    {
        this.sumaKwadratowLiczb = 0.0;
        this.licznik = 0;
    }

    public void Accumulate(SqlDouble Value)
    {
        if (!Value.IsNull) 
        {
            double liczba = double.Parse(Value.ToString());
            this.sumaKwadratowLiczb = this.sumaKwadratowLiczb + liczba * liczba;
            this.licznik++;
        }    
    }

    public void Merge(SredniaKwadratowa Group)
    {
        this.sumaKwadratowLiczb = this.sumaKwadratowLiczb + Group.sumaKwadratowLiczb;
        this.licznik = this.licznik + Group.licznik;
    }

    public SqlDouble Terminate()
    {
        double sredniaArytmetycznaKwadratowLiczb = this.sumaKwadratowLiczb / this.licznik;
        double wynik = Math.Sqrt(sredniaArytmetycznaKwadratowLiczb);
        return new SqlDouble(wynik);
    }
    
}