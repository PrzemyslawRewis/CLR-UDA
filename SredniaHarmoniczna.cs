using System;
using System.Data;
using Microsoft.SqlServer.Server;
using System.Data.SqlClient;
using System.Data.SqlTypes;


[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.Native)]
public struct SredniaHarmoniczna
{
    private double sumaOdwrotnosciLiczb;
    private int licznik;

    public void Init()
    {
        this.sumaOdwrotnosciLiczb = 0.0;
        this.licznik = 0;
    }

    public void Accumulate(SqlDouble Value)
    {
        if (!Value.IsNull) 
        {
            double liczba = double.Parse(Value.ToString());
            this.sumaOdwrotnosciLiczb = this.sumaOdwrotnosciLiczb + 1.0/liczba;
            this.licznik++;    
        }
        
    }

    public void Merge(SredniaHarmoniczna Group)
    {
        this.sumaOdwrotnosciLiczb = this.sumaOdwrotnosciLiczb + Group.sumaOdwrotnosciLiczb;
        this.licznik = this.licznik + Group.licznik;
    }

    public SqlDouble Terminate()
    {
        double wynik = ((double)this.licznik)/this.sumaOdwrotnosciLiczb;
        return new SqlDouble(wynik);
    }
    
}