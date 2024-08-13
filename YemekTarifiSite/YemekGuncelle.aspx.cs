using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YemekGuncelle : System.Web.UI.Page
    {
        string yemek = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string kategori = "";
            yemek = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Yemekler WHERE YemekID = {yemek}", con);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        txtYemekAdi.Text = reader[1].ToString();
                        txtMalzemeler.Text = reader[2].ToString();
                        txtTarifi.Text = reader[3].ToString();
                        txtTarihi.Text = reader[5].ToString();
                        txtPuani.Text = reader[6].ToString();
                        kategori = reader[7].ToString();
                        // txtMalzemeler.Text = reader[2].ToString(); // Kategori
                    }
                    // txtMalzemeler.Text = ""; // Kategori
                }
            }

            // Kategori Görüntüleme
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Kategoriler WHERE KategoriID = {kategori}", con);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                    txtKategori.Text = dr[1].ToString();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Assets/Media/" + FileUpload1.FileName));

            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Yemekler SET YemekAdi = @p1, YemekMalzemeleri = @p2, YemekTarifi = @p3", conn);
                cmd.Parameters.AddWithValue("@p1", txtYemekAdi.Text);
                cmd.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
                cmd.Parameters.AddWithValue("@p3", txtTarifi.Text);

                cmd.ExecuteNonQuery();
                Response.Write("<script>confirm('Güncellendi')</script>");
            }



            txtYemekAdi.Text = "";
            txtMalzemeler.Text = "";
            txtTarifi.Text = "";
            txtTarihi.Text = "";
            txtPuani.Text = "";
        }
    }
}