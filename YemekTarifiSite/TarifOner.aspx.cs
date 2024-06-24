using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Tarifler (TarifAdi, TarifMalzeme, TarifYapilis, TarifResim, TarifSahip, TarifSahipMail) VALUES (@t1, @t2, @t3, @t4, @t5, @t6)", con);
                cmd.Parameters.AddWithValue("@t1", txtTarifAdi.Text);
                cmd.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
                cmd.Parameters.AddWithValue("@t3", txtYapilis.Text);
                cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@t5", txtOnerenAdi.Text);
                cmd.Parameters.AddWithValue("@t6", txtOnerenMail.Text);
                cmd.ExecuteNonQuery();
            }
            ClearTextBoxes();
        }

        void ClearTextBoxes()
        {
            txtTarifAdi.Text = "";
            txtMalzemeler.Text = "";
            txtYapilis.Text = "";
            txtOnerenAdi.Text = "";
            txtOnerenMail.Text = "";
        }
    }
}