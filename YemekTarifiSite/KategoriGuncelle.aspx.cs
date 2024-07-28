using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        string kategori = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false)
            {
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Kategoriler WHERE KategoriID = {kategori}", con);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        txtAdi.Text = reader[1].ToString();
                        txtAdet.Text = reader[2].ToString();
                    }
                    txtAdet.Enabled = false;
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Kategoriler SET KategoriAdi = '{txtAdi.Text}', KategoriAdet = '{txtAdet.Text}' WHERE KategoriID = {kategori}", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>confirm('Güncellendi')</script>");
            }
        }
    }
}