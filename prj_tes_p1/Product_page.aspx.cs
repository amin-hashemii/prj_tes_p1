﻿using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
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
            string query = $"exec SP_products_delete {Lbl_id.Text};";
            using (var commit = new SqlCommand(query, connect))
            {
                connect.Open();
                commit.ExecuteNonQuery();
                connect.Close();
                Response.Redirect("Product_page.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //string f = Server.MapPath("~/img/");
            //FileUpload1.SaveAs(f + Path.GetFileName(FileUpload1.FileName));

            if (FileUpload1.HasFile)

            {

                string filePath = Server.MapPath("~/img/") + FileUpload1.FileName;

                FileUpload1.SaveAs(filePath);


                // Display the uploaded image in the Image control

                Image1.ImageUrl = "~/img/" + FileUpload1.FileName;

            }
            else
            {

                Label1.Text = "Please select a file to upload!";

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Lbl_id.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_name.Text = GridView1.SelectedRow.Cells[2].Text;
            Txt_phone.Text = GridView1.SelectedRow.Cells[4].Text;
            Txt_gmail.Text = GridView1.SelectedRow.Cells[5].Text;
            txt_vasiat.Text = GridView1.SelectedRow.Cells[6].Text;
            Txt_phone_user.Text = GridView1.SelectedRow.Cells[7].Text;
           
            //FileUpload1.FileName = GridView1.SelectedRow.Cells[8].Text;


        }
        public void empity()
        {
            Lbl_id.Text = "";
            txt_name.Text = "";
            Txt_phone.Text = "";
            Txt_gmail.Text = "";
            txt_vasiat.Text = "";
            Txt_phone_user.Text = "";
           
            
           
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
            string query = $" exec sp_product_update {Lbl_id.Text}, N'{txt_name.Text}',N'{Txt_phone.Text}','{Txt_gmail.Text}';";
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

