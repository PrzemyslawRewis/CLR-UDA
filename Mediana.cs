using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Runtime.InteropServices;
using Microsoft.SqlServer.Server;
using System.Data.SqlClient;


[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.UserDefined, IsNullIfEmpty = true, MaxByteSize = 8000)]
[StructLayout(LayoutKind.Sequential)]
public struct Mediana : IBinarySerialize
{
    private List<double> listaLiczb;

    public void Init()
    {
        this.listaLiczb = new List<double>();
    }

    public void Accumulate(SqlDouble Value)
    {
        if (!Value.IsNull) 
        {
            double liczba = double.Parse(Value.ToString());
            this.listaLiczb.Add(liczba);
        }    
    }
  
    public void Merge(Mediana Group)
    {
        this.listaLiczb.InsertRange(this.listaLiczb.Count, Group.listaLiczb);  
    }

    public SqlDouble Terminate()
    {
        SqlDouble result = SqlDouble.Null; 
        this.listaLiczb.Sort();
        int first, second;
        if (this.listaLiczb.Count % 2 == 1)
        {
            first = this.listaLiczb.Count / 2; 
            second = first;
        }
        else
        {
            first = this.listaLiczb.Count / 2; 
            second = first + 1;
        }
        if (this.listaLiczb.Count > 0) 
        {
            result = (SqlDouble)(this.listaLiczb[first] + this.listaLiczb[second]) / 2.0; 
        }
        return result;
    }
    
    #region IBinarySerialize Members
    public void Read(System.IO.BinaryReader r)
    {
        this.listaLiczb = new List<double>();
        int j = r.ReadInt32();
        for (int i = 0; i < j; i++)
            this.listaLiczb.Add(r.ReadDouble());
    }

    public void Write(System.IO.BinaryWriter w)
    {
        w.Write(this.listaLiczb.Count);
        foreach (double d in this.listaLiczb)
            w.Write(d);
    }
    #endregion
   
}