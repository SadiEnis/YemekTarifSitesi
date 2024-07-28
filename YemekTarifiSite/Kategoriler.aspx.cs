using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }

            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Kategoriler", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }

            if (islem == "sil")
            {
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmdDelete = new SqlCommand($"DELETE FROM tbl_Kategoriler WHERE KategoriID = {id}", con);
                    cmdDelete.ExecuteNonQuery();
                }
            }
        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            if (Panel1.Visible == false)
            {
                Panel1.Visible = true;
                btnShow.Text = "-";
            }
            else if (Panel1.Visible == true)
            {
                Panel1.Visible = false;
                btnShow.Text = "+";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == false)
            {
                Panel2.Visible = true;
                btnShow2.Text = "-";
            }
            else if (Panel2.Visible == true)
            {
                Panel2.Visible = false;
                btnShow2.Text = "+";
            }
        }

        protected void btnKategoriEkle_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"INSERT INTO tbl_Kategoriler (KategoriAdi) VALUES ('{txtAdi.Text}')", conn);
                cmd.ExecuteNonQuery();
            }

            txtAdi.Text = "";
            Response.Write("<script>confirm('Kaydedildi')</script>");
        }
    }
}