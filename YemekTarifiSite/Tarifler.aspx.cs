using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Tarifler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Tarifler", con);
                SqlDataReader dr = cmd.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();
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
    }
}