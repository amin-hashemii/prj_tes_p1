using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prj_tes_p1
{
    public partial class User_log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void empity()
        {
            Txt_username.Text = "";
            Txt_password.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connet = new SqlConnection(@"Data Source=DESKTOP-MCK5EA8;Initial Catalog=db_prj_pro;Integrated Security=True");

            string query = $"select Phone,Name,Family from users where User_name=N'{Txt_username.Text}' and Password=N'{Txt_password.Text}';  ";

            using (var cmd = new SqlCommand(query, connet))
            {
                connet.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while(reader.Read())
                {
                    try
                    {
                        Response.Redirect("About.aspx");
                    }
                    catch 
                    {
                        Label1.Text = "اشتباه است";
                    }
                }
                connet.Close();
            }
        }
    }
}