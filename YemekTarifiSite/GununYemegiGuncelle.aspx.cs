using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class GununYemegiGuncelle : System.Web.UI.Page
    {
        string id = "";
        string mevcutId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yemekler WHERE Durum = 1", con);
                SqlDataReader reader = cmd.ExecuteReader();

                DataList1.DataSource = reader;
                DataList1.DataBind();

                while (reader.Read())
                    mevcutId = reader[0].ToString();
            }
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yemekler WHERE Durum = 1", con);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                    mevcutId = reader[0].ToString();
            }
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Yemekler WHERE YemekID = {id}", con);
                SqlDataReader reader = cmd.ExecuteReader();

                DataList2.DataSource = reader;
                DataList2.DataBind();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            // Öncekini pasif edip
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Yemekler SET Durum = 0 WHERE YemekID = {mevcutId}", conn);
                cmd.ExecuteNonQuery();
            }
            // Yenisini aktif edelim
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Yemekler SET Durum = 1 WHERE YemekID = {id}", con);
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("GununYemegiAdmin.aspx");
        }
    }
}