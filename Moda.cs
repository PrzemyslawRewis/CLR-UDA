using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Runtime.InteropServices;
using Microsoft.SqlServer.Server;
using System.Data.SqlClient;


[Serializable]
[Microsoft.SqlServer.Server.SqlUserDefinedAggregate(Format.UserDefined,IsNullIfEmpty = true,MaxByteSize = 8000)]
[StructLayout(LayoutKind.Sequential)]
public struct Moda : IBinarySerialize
{
    private List<double> listaLiczb;
    private int czestosc;
    private double moda;
    public void Init()
    {
        listaLiczb = new List<double>();
        
    }

    public void Accumulate(SqlDouble Value)
    {
        if (!Value.IsNull) 
        {
            double liczba = double.Parse(Value.ToString());
            this.listaLiczb.Add(liczba);
        }  
    }

    public void Merge(Moda Group)
    {
        this.listaLiczb.InsertRange(this.listaLiczb.Count, Group.listaLiczb); 
    }

    public SqlDouble Terminate()
    {
        SqlDouble result = SqlDouble.Null;
        this.listaLiczb.Sort();
        czestosc = 1;
        double moda = listaLiczb[0];
        int tmp = 1;
        
        for (int i = 1; i < listaLiczb.Count; i++)
        {

            if (listaLiczb[i] == listaLiczb[i - 1])
            {
                tmp++;
            }
            else
            {
              tmp=1;
            }
            if (tmp > czestosc)
            {
              czestosc = tmp;
              moda = listaLiczb[i - 1];
            }
        }
        result = (SqlDouble)moda;
        return result;
    }

    #region IBinarySerialize Members
    public void Read(System.IO.BinaryReader r)
    {
        this.listaLiczb = new List<double>();
        int j = r.ReadInt32();
        for (int i = 0; i < j; i++)
        {
            this.listaLiczb.Add(r.ReadDouble());
        }
    }
    
    public void Write(System.IO.BinaryWriter w)
    {
        w.Write(this.listaLiczb.Count);
        foreach (double d in this.listaLiczb)
        {
            w.Write(d);
        }
    }
    #endregion
    

}