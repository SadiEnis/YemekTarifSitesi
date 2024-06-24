using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con =  db.GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yemekler", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList2.DataSource = dr;
                DataList2.DataBind();
            }
        }
    }
}