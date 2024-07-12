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

                SqlCommand cmd2 = new SqlCommand("SELECT * FROM tbl_Yorumlar WHERE YemekID = @p2", conn);
                cmd2.Parameters.AddWithValue("@p2", tempYemekID);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DataList2.DataSource = dr2;
                DataList2.DataBind();
            }
        }
    }
}