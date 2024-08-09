using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Onaylanan Yorumlar
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yorumlar WHERE YorumOnay = 1", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            // Onaylanmayan Yorumlar
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yorumlar WHERE YorumOnay = 0", con);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList2.DataSource = dr;
                DataList2.DataBind();
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

        protected void btnShow2_Click(object sender, EventArgs e)
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
    }
}