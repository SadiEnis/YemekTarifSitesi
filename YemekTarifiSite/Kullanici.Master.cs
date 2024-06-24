using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        static string conString = @"Data Source=DESKTOP-1AE8KEC;Initial Catalog=dbo_YemekTarifi;Integrated Security=True;";
        Database db = Database.GetInstance(conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();
                SqlCommand cmdKategoriler = new SqlCommand("SELECT * FROM tbl_Kategoriler", db.GetConnection());
                SqlDataReader reader = cmdKategoriler.ExecuteReader();
                DataList1.DataSource = reader;
                DataList1.DataBind();
            }
        }
    }
}