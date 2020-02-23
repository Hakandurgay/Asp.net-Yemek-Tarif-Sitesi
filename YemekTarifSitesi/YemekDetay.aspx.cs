using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif Baglan = new SqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where yemekid=@p1", Baglan.F_Baglanti()); 
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            Baglan.F_Baglanti().Close();

            //yorumları listeleme 
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@p2", Baglan.F_Baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,yemekid) values (@t1,@t2,@t3,@t4)", Baglan.F_Baglanti());
            komut.Parameters.AddWithValue("@t1", TxtAdsoyad.Text);
            komut.Parameters.AddWithValue("@t2", Txtmail.Text);
            komut.Parameters.AddWithValue("@t3", Txticerik.Text);
            komut.Parameters.AddWithValue("@t4", yemekid);
            komut.ExecuteNonQuery();
            Baglan.F_Baglanti().Close();
            Response.Write("Yorumunuz Alınmıştır");
        }
    }
}