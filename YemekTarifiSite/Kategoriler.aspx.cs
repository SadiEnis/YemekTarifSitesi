using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Kategoriler", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
        }
    }
}