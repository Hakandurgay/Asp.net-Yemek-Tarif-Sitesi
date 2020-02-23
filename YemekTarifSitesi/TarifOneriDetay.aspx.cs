using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class TarifOneriDetay : System.Web.UI.Page
    {
        SqlSinif Baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
          id = Request.QueryString["Tarifid"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", Baglan.F_Baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAdsoyad.Text = dr[1].ToString();
                Txtmail.Text= dr[2].ToString();
                Txticerik.Text= dr[3].ToString();
                TxtAdsoyad0.Text= dr[5].ToString();
                Txtmail0.Text= dr[6].ToString();
            }
            Baglan.F_Baglanti().Close();

        }
    }
}