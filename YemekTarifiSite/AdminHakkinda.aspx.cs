using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class AdminHakkinda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SqlConnection con = Database.GetInstance().GetConnection())
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Hakkimda", con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        txtBen.Text = dr[0].ToString();
                        txtProje.Text = dr[1].ToString();
                    }
                }
            }
        }
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE tbl_Hakkimda SET Ben = @p1, Proje = @p2", conn);
                cmd.Parameters.AddWithValue("@p1", txtBen.Text);
                cmd.Parameters.AddWithValue("@p2", txtProje.Text);

                cmd.ExecuteNonQuery();
            }
        }
    }
}