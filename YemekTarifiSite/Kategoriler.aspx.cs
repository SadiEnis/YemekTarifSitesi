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

            Panel1.Visible = false;
            Panel2.Visible = false;
        }
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnCikar_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
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