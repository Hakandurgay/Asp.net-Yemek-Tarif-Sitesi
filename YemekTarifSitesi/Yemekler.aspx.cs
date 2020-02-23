using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifSitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.F_Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            Panel2.Visible = false;
            Panel5.Visible = false;


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
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //yemek ekleme
            SqlSinif bgl = new SqlSinif();
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@t1,@t2,@t3,@t4)", bgl.F_Baglanti());
            komut.Parameters.AddWithValue("@t1", TextBox1.Text);
            komut.Parameters.AddWithValue("@t2", TextBox2.Text);
            komut.Parameters.AddWithValue("@t3", TextBox3.Text);
            komut.Parameters.AddWithValue("@t4", DropDownList1.SelectedValue);

            komut.ExecuteNonQuery();
            bgl.F_Baglanti().Close();


            //kategori sayısını arttırma
            SqlCommand komut2 = new SqlCommand("update  Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.F_Baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.F_Baglanti().Close();

        }
    }
}