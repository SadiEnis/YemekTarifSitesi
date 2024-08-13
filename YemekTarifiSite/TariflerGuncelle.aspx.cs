using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class TariflerGuncelle : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Tarifler WHERE TarifID = {id}", con);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    txtAdi.Text = dr[1].ToString();
                    txtMalzemeler.Text = dr[2].ToString();
                    txtTarifi.Text = dr[3].ToString();
                    txtOneren.Text = dr[5].ToString();
                    txtMail.Text = dr[6].ToString();
                }
            }

            if (!IsPostBack)
            {
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand($"SELECT * FROM tbl_Kategoriler", con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAdi";
                    DropDownList1.DataValueField = "KategoriID";

                    DropDownList1.DataSource = dr;
                    DropDownList1.DataBind();

                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Tarifler SET TarifDurum = 1 WHERE TarifID = {id}", conn);
                cmd.ExecuteNonQuery();
            }

            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Yemekler (YemekAdi, YemekMalzemeleri, YemekTarifi, KategoriID) VALUES (@p1, @p2, @p3, @p4)", con);
                cmd.Parameters.AddWithValue("@p1", txtAdi.Text);
                cmd.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
                cmd.Parameters.AddWithValue("@p3", txtTarifi.Text);
                cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

                cmd.ExecuteNonQuery();
            }
            using (SqlConnection connection = Database.GetInstance().GetConnection())
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand($"UPDATE tbl_Kategoriler SET KategoriAdet = kategoriAdet+1 WHERE KategoriID = {DropDownList1.SelectedValue}", connection);
                cmd.ExecuteNonQuery();
            }
        }
    }
}