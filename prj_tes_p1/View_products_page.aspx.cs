using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.IdentityModel.Tokens;
using System.Text.Json;
using System.Collections;

namespace prj_tes_p1
{
    public partial class View_products_page : System.Web.UI.Page
    {

        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-MCK5EA8;Initial Catalog=db_prj_pro;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // show_product("");
            product_clear();
        }
        System.Web.UI.HtmlControls.HtmlGenericControl row =  new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        System.Web.UI.HtmlControls.HtmlGenericControl container =  new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
       

       
        protected void create_div_box( int i ,string img_address,string lbl_txt)
        {
            

            System.Web.UI.HtmlControls.HtmlGenericControl box = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            System.Web.UI.HtmlControls.HtmlGenericControl internal_box = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");

            container.ID = "con";
            container.Attributes.Add("class", "container");
            product_body.Controls.Add(container);

            row.ID = "row";
            row.Attributes.Add("class", "row");
            container.Controls.Add(row);
            row.ID = "w";
            box.Attributes.Add("class", "col-md-3");
            row.Controls.Add(box);


            //internal_box.Attributes.Add("class", "col-md-3");

            internal_box.ID = "internal_box"+i.ToString();
            //internal_box.Attributes.Add("class", "col-md-3");
            internal_box.Style.Add(HtmlTextWriterStyle.Height,"340px");
            internal_box.Style.Add(HtmlTextWriterStyle.BackgroundColor,"red");
            internal_box.Style.Add(HtmlTextWriterStyle.MarginRight,"50px");
            internal_box.Style.Add(HtmlTextWriterStyle.Width,"240px");
            internal_box.Style.Add(HtmlTextWriterStyle.BorderStyle,"1px,solid,black");
           box.Controls.Add(internal_box);

            System.Web.UI.HtmlControls.HtmlGenericControl images_box =
               new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            images_box.ID = "images_box"+i.ToString();
            images_box.Style.Add(HtmlTextWriterStyle.BackgroundColor,"green");
            images_box.Style.Add(HtmlTextWriterStyle.Height,"75%");
            images_box.Style.Add(HtmlTextWriterStyle.Width,"100%");
            internal_box.Controls.Add(images_box);

            HtmlImage img = new HtmlImage();
            img.ID = "image" + i+ToString();
            img.Src = "~/img/" + img_address;
            img.Style.Add(HtmlTextWriterStyle.Width,"100%");
            img.Style.Add(HtmlTextWriterStyle.Height,"100%");
            images_box.Controls.Add(img);

            System.Web.UI.HtmlControls.HtmlGenericControl label =  new System.Web.UI.HtmlControls.HtmlGenericControl("Label");
            label.ID = "label" + i.ToString();
            label.InnerText = i.ToString();
            label.InnerText = lbl_txt;
            internal_box.Controls.Add(label);
           
        }

       

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
          

        }
        List<System.Web.UI.WebControls.Label> labels = new List<System.Web.UI.WebControls.Label> ();
        List<Image> image_all = new List<Image> ();
        protected void show_product(string type)
        {
            product_clear();
            //System.Web.UI.WebControls.Label[] l = { Label1, Label2, Label3, Label4, Label5 };
            //Image[] im = { Image2, Image3, Image4, Image5, Image6 };
            //labels.AddRange(l);
            //image_all.AddRange(im);

            string query = $"exec select_produtc_type N'{type}'";

            connect.Open();
            using (var commit = new SqlCommand(query, connect))
            {
                int i = 0;
                SqlDataReader reader = commit.ExecuteReader();
                while (reader.Read())
                {

                    
                        create_div_box(i,reader[7].ToString(), reader[1].ToString());
                        //image_all[i].ImageUrl = "~/img/" + reader[7].ToString();
                        //labels[i].Text = reader[1].ToString();
                 

                    i += 1;
                }
                reader.Close() ;
            }
            connect.Close();
         
        }
        protected void product_clear()
        {
            //System.Web.UI.WebControls.Label[] l = { Label1, Label2, Label3, Label4, Label5 };
            //Image[] i = { Image2, Image3, Image4, Image5, Image6 };
            //labels.AddRange(l);
            //image_all.AddRange(i);
            foreach (var img in image_all)
            {
                img.ImageUrl = "";
            }
            foreach (var lbl in labels)
            { lbl.Text = ""; }
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            show_product("شلوار");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            show_product("تیشرت");   
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            show_product("");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            show_product("کفش");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {

            string query = "SELECT * FROM Customers WHERE Name LIKE @SearchTerm";
            SqlCommand comand = new SqlCommand(query, connect);

            comand.Parameters.AddWithValue("@SearchTerm", "%" + TextBox1.Text + "%");


            // Execute the search query

            connect.Open();

            SqlDataReader reader = comand.ExecuteReader();


            // Display the results in a DataGridView

        }
    }
}