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
    public partial class View_products_page : System.Web.UI.Page
    {

        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-MCK5EA8;Initial Catalog=db_prj_pro;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            show_product("");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
          
        }
        List<System.Web.UI.WebControls.Label> labels = new List<System.Web.UI.WebControls.Label> ();
        List<Image> image_all = new List<Image> ();
        protected void show_product(string type)
        {
            product_clear();
            System.Web.UI.WebControls.Label[] l = { Label1, Label2, Label3, Label4, Label5 };
            Image[] im = { Image2, Image3, Image4, Image5, Image6 };
            labels.AddRange(l);
            image_all.AddRange(im);

            string query = $"exec select_produtc_type N'{type}'";

            connect.Open();
            using (var commit = new SqlCommand(query, connect))
            {
                int i = 0;
                SqlDataReader reader = commit.ExecuteReader();
                while (reader.Read())
                {

                    if (i < image_all.Count)
                    {
                        image_all[i].ImageUrl = "~/img/" + reader[7].ToString();
                        labels[i].Text = reader[1].ToString();
                    }

                    i += 1;
                }
                reader.Close() ;
            }
            connect.Close();
        }
        protected void product_clear()
        {
            System.Web.UI.WebControls.Label[] l = { Label1, Label2, Label3, Label4, Label5 };
            Image[] i = { Image2, Image3, Image4, Image5, Image6 };
            labels.AddRange(l);
            image_all.AddRange(i);
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
    }
}