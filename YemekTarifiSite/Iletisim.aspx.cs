using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGonder_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_mesajlar (MesajGonderen, MesajMail, MesajBaslik, MesajIcerik) VALUES (@p1, @p2, @p3, @p4)", conn);
                cmd.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
                cmd.Parameters.AddWithValue("@p2", txtMail.Text);
                cmd.Parameters.AddWithValue("@p3", txtBaslik.Text);
                cmd.Parameters.AddWithValue("@p4", txtMesaj.Text);
                cmd.ExecuteNonQuery();
            }

            txtAdSoyad.Text = "";
            txtMail.Text = "";
            txtBaslik.Text = "";
            txtMesaj.Text = "";
            Response.Write("<script>confirm('Mesaj kaydedildi.')</script>");
        }
    }
}