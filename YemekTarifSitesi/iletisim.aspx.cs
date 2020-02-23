using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlSinif baglan = new SqlSinif();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajBaslik,MesajMail,Mesajicerik,MesajGonderen) values (@t1,@t2,@t3,@t4)", baglan.F_Baglanti());
            komut.Parameters.AddWithValue("@t4", TxtAdsoyad.Text);
            komut.Parameters.AddWithValue("@t2", TxtMail.Text);
            komut.Parameters.AddWithValue("@t3", TxtMesaj.Text);
            komut.Parameters.AddWithValue("@t1", TxtBaslik.Text);
            komut.ExecuteNonQuery();
            baglan.F_Baglanti().Close();
            Response.Write("Mesajınız Alınmıştır");
        }
    }
}