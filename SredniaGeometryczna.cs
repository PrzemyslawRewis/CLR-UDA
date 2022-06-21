using System;
using System.Data;
using Microsoft.SqlServer.Server;
using System.Data.SqlClient;
using System.Data.SqlTypes;


[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.Native)]
public struct SredniaGeometryczna
{
    private double iloczyn;
    private int licznik;

    public void Init()
    {
        this.iloczyn = 1.0;
        this.licznik = 0;
    }

    public void Accumulate(SqlDouble Value)
    {
        if (!Value.IsNull) 
        {
            double liczba = double.Parse(Value.ToString());
            this.iloczyn = this.iloczyn * liczba;
            this.licznik++;
        }    
    }

    public void Merge(SredniaGeometryczna Group)
    {
        this.iloczyn = this.iloczyn * Group.iloczyn;
        this.licznik = this.licznik + Group.licznik; 
    }

    public SqlDouble Terminate()
    {
        double n = 1.0/(double)this.licznik;
        double wynik = Math.Pow(this.iloczyn, n);
        return new SqlDouble(wynik);
    }

}