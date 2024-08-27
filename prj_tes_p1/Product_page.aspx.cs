using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static prj_tes_p1.User_log;

namespace prj_tes_p1
{
    public partial class Product_page : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-MCK5EA8;Initial Catalog=db_prj_pro;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
        {

            lbl_username.Text= TextHolder.Text;
            if (lbl_username.Text=="")
                Response.Redirect("user_log.aspx");


        }

        protected void Btn_confirm_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/img/") + lbl_imagename.Text;

            FileUpload1.SaveAs(filePath);
            string query = $" exec dbo.PR_insert_product N'{txt_name.Text}',N'{Txt_phone.Text}','{Txt_gmail.Text}',{int.Parse(list_vas.SelectedValue)},'{lbl_username.Text}','{lbl_imagename.Text}';";

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
            string query = $"exec SP_products_delete {Lbl_id.Text};";
            using (var commit = new SqlCommand(query, connect))
            {
                connect.Open();
                commit.ExecuteNonQuery();
                connect.Close();
                Response.Redirect("Product_page.aspx");
            }
        }
        string file_name = "";

        protected void Button2_Click(object sender, EventArgs e)
        {

            //string f = Server.MapPath("~/img/");
            //FileUpload1.SaveAs(f + Path.GetFileName(FileUpload1.FileName));

            if (FileUpload1.HasFile)

            {
                 file_name=FileUpload1.FileName;
                lbl_imagename.Text = file_name;


                // Display the uploaded image in the Image control

                Image1.ImageUrl = "~/img/" + FileUpload1.FileName;

                ;      

            }
            else
            {

                lbl_imagename.Text = "Please select a file to upload!";

            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Lbl_id.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_name.Text = GridView1.SelectedRow.Cells[2].Text;
            Txt_phone.Text = GridView1.SelectedRow.Cells[4].Text;
            Txt_gmail.Text = GridView1.SelectedRow.Cells[5].Text;
           list_vas.Text = GridView1.SelectedRow.Cells[6].Text;
            lbl_username.Text = GridView1.SelectedRow.Cells[7].Text;

            lbl_imagename.Text= GridView1.SelectedRow.Cells[8].Text;


        }
        public void empity()
        {
            Lbl_id.Text = "";
            txt_name.Text = "";
            Txt_phone.Text = "";
            Txt_gmail.Text = "";
            list_vas.Text = "";
            lbl_username.Text = "";
           
            
           
        }
        protected void Btn_new_Click(object sender, EventArgs e)
        {
            empity();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
            //txt_name.Text = row.Cells[2].Text;

           
        }

    

        protected void Btn_edit_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/img/") + lbl_imagename.Text;

            FileUpload1.SaveAs(filePath);
            string query = $" exec sp_product_update {Lbl_id.Text}, N'{txt_name.Text}',N'{Txt_phone.Text}','{Txt_gmail.Text}','{int.Parse(list_vas.SelectedValue)}','{lbl_imagename.Text}';";
            using (var commit = new SqlCommand(query, connect))
            {
                connect.Open();
                commit.ExecuteNonQuery();
                connect.Close();
                Response.Redirect("Product_page.aspx");
            }
        }
    }
}

