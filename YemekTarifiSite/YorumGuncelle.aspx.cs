using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {
                using (SqlConnection conn = Database.GetInstance().GetConnection())
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand($"SELECT YorumAdSoyad, YorumMail, YorumTarih, YorumOnay, YorumIcerik, YemekAdi FROM tbl_Yorumlar Y1 INNER JOIN tbl_Yemekler Y2 ON Y1.YemekID = Y2.YemekID WHERE YorumID = {id}", conn);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        txtAdSoyad.Text = reader[0].ToString();
                        txtMail.Text = reader[1].ToString();
                        txtTarih.Text = reader[2].ToString();
                        if (reader[3].ToString() == "True")
                            cbOnay.Checked = true;
                        else if (reader[3].ToString() == "False")
                            cbOnay.Checked = false;
                        txtIcerik.Text = reader[4].ToString();
                        txtYemek.Text = reader[5].ToString();
                    }
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string onay = "";
            if (cbOnay.Checked == true)
                onay = "1";
            else if (cbOnay.Checked == false)
                onay = "0";

            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Yorumlar SET YorumOnay = {onay}, YorumIcerik = '{txtIcerik.Text}' WHERE YorumID = {id}", con);
                cmd.ExecuteNonQuery();
            }
        }
    }
}