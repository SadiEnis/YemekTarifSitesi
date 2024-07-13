using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM tbl_Hakkimda", con);
                SqlDataReader reader1 = cmd1.ExecuteReader();
                DataList3.DataSource = reader1;
                DataList3.DataBind();
                con.Close();

                con.Open();
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM tbl_Hakkimda", con);
                SqlDataReader reader2 = cmd2.ExecuteReader();
                DataList4.DataSource = reader2;
                DataList4.DataBind();
            }
        }
    }
}