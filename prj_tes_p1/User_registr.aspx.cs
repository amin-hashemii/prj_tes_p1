using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prj_tes_p1
{
    public partial class User_registr : System.Web.UI.Page
    {
        SqlConnection conect = new SqlConnection(@"Data Source=DESKTOP-MCK5EA8;Initial Catalog=db_prj_pro;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void empity()
        {
            Txt_phone.Text = "";
            Txt_username.Text = "";
            Txt_password.Text = "";
            Txt_name.Text = "";
            Txt_family.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = $"exec dbo.PR_insert_user N'{Txt_phone.Text}',N'{Txt_username.Text}',N'{Txt_password.Text}',N'{Txt_name.Text}',N'{Txt_family.Text}';";

            using (var commit = new SqlCommand(query, conect))
            {
                conect.Open();
                commit.ExecuteNonQuery();
                conect.Close();
                empity();
                
            }


        }
    }
}