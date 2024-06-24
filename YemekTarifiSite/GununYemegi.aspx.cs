using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();
                SqlCommand cmdKategoriler = new SqlCommand("SELECT * FROM tbl_GununYemegi", con);
                SqlDataReader reader = cmdKategoriler.ExecuteReader();
                DataList2.DataSource = reader;
                DataList2.DataBind();
            }
        }
    }
}