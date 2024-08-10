using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    string commandArgumentValue = DataBinder.Eval(e.Row.DataItem, "ID").ToString();
            //    ClientScript.RegisterForEventValidation("btnSec", "CommandArgumentValue");
            //}

            // Buttondan eval değer alamadım!!

            using (SqlConnection conn = Database.GetInstance().GetConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_Yemekler", conn);
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
        protected void btnSec_Command(object sender, CommandEventArgs e)
        {
            yemekid = e.CommandArgument.ToString();

        }
        protected void btnSec_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}