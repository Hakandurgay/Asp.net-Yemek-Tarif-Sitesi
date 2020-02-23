using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@p1", bgl.F_Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }
                bgl.F_Baglanti().Close();
            }


            if (Page.IsPostBack == false)
            {
                //kategori listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.F_Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd"; //içinde gözükecek alanı belirler
                DropDownList1.DataValueField = "Kategoriid"; //adın idsini arka planda tutacak

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.F_Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.F_Baglanti().Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //önce tüm yemeklerin durumunu false yapıyor 
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set durum=0", bgl.F_Baglanti());
            komut.ExecuteNonQuery();
            bgl.F_Baglanti().Close();

            //tıklanan değer günün yemeği oluyor
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum=1 where yemekid=@p1", bgl.F_Baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.F_Baglanti().Close();

        }
    }
}