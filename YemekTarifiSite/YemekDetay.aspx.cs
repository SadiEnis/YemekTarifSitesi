using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        string tempYemekID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            tempYemekID = Request.QueryString["YemekID"];
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT YemekAdi From tbl_Yemekler WHERE YemekID = @p1", conn);
                cmd.Parameters.AddWithValue("@p1", tempYemekID);

                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label3.Text = dr[0].ToString();
                }
            }
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();

                SqlCommand cmd2 = new SqlCommand("SELECT * FROM tbl_Yorumlar WHERE YemekID = @p2 AND YorumOnay = 1", conn);
                cmd2.Parameters.AddWithValue("@p2", tempYemekID);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();
            }
        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Yorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YemekID) VALUES (@p1, @p2, @p3, @p4)", conn);
                cmd.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
                cmd.Parameters.AddWithValue("@p2", txtMail.Text);
                cmd.Parameters.AddWithValue("@p3", txtYorum.Text);
                cmd.Parameters.AddWithValue("@p4", tempYemekID);
                cmd.ExecuteNonQuery();
            }

            txtAdSoyad.Text = "";
            txtMail.Text = "";
            txtYorum.Text = "";
            Response.Write("<script>confirm('Yorum kaydedildi.')</script>");
        }
    }
}