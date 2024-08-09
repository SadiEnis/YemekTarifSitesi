using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];

                // DropDawnList Kategori Listeleme
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Kategoriler", con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    ddlKategori.DataTextField = "KategoriAdi";
                    ddlKategori.DataValueField = "KategoriID";

                    ddlKategori.DataSource = dr;
                    ddlKategori.DataBind();
                }
            }

            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yemekler", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }

            if (islem == "sil")
            {
                string kategori = "";
                
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Yemekler WHERE YEmekID = {id}", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                        kategori = dr[7].ToString();
                }
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmdDelete = new SqlCommand($"DELETE FROM tbl_Yemekler WHERE YemekID = {id}", con);
                    cmdDelete.ExecuteNonQuery();
                }
                using (SqlConnection conn = Database.GetInstance().GetConnection())
                {
                    conn.Open();
                    SqlCommand cmdUpdate = new SqlCommand($"UPDATE tbl_Kategoriler SET KategoriAdet = KategoriAdet-1 WHERE KategoriID = {kategori}", conn);
                    cmdUpdate.ExecuteNonQuery();
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

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            // Yemek ekle
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"INSERT INTO tbl_Yemekler (YemekAdi, YemekMalzemeleri, YemekTarifi, KategoriID) VALUES (@p1, @p2, @p3, @p4)", conn);
                cmd.Parameters.AddWithValue("@p1", txtYemekAdi.Text);
                cmd.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
                cmd.Parameters.AddWithValue("@p3", txtTarifi.Text);
                cmd.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);

                cmd.ExecuteNonQuery();
            }

            // Kategori sayısı bir arttır
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Kategoriler SET KategoriAdet = KategoriAdet+1 WHERE KategoriID = {ddlKategori.SelectedValue}", conn);
                cmd.ExecuteNonQuery();
            }

            txtYemekAdi.Text = "";
            txtMalzemeler.Text = "";
            txtTarifi.Text = "";
            Response.Write("<script>confirm('Kaydedildi')</script>");
        }
    }
}