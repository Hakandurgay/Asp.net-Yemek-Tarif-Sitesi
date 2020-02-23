using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public class SqlSinif
    {
        public SqlConnection F_Baglanti()
        {

            SqlConnection baglan = new SqlConnection(@"Data Source=HAKAN\SQLEXPRESS;Initial Catalog=Dbo_Yemektarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }

    }
}