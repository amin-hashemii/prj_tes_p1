using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace prj_tes_p1
{
    public partial class Product_page : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-MCK5EA8;Initial Catalog=db_prj_pro;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_confirm_Click(object sender, EventArgs e)
        {
            string query = $" exec dbo.PR_insert_product N'{txt_name.Text}',N'{Txt_phone.Text}','{Txt_gmail.Text}',{int.Parse(txt_vasiat.Text)},'{Txt_phone_user.Text}','{FileUpload1.FileName}';";

            using (var commit = new SqlCommand(query, connect))
            {
                connect.Open();
                commit.ExecuteNonQuery();
                connect.Close();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.AppendFormat(" uploading file:{0}", FileUpload1.FileName);
                Response.Redirect("Product_page.aspx");
            }
        
        }

        protected void Btn_delet_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Image1.ImageUrl = FileUpload1.FileName;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }
    }
}