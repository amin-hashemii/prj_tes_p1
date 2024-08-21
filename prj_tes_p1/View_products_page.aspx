<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_products_page.aspx.cs" Inherits="prj_tes_p1.View_products_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="Content/bootstrap.rtl.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
              <%--  <div class="search_pro">
                    <asp:TextBox CssClass="txt_search" ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Image ImageUrl="~/img/search.png"   CssClass="img_search" ID="Image1" runat="server" />
                </div>--%>
                <div>
                     <asp:Button ID="Button2" Class="btn_loguser" PostBackUrl="~/User_registr.aspx" runat="server" Text="ثبت نام"  />
                     <asp:Button ID="Button1" Class="btn_reguser" PostBackUrl="~/User_log.aspx" runat="server" Text="ورود"  />
                </div>


            </header>

            <div class="body_page">

                <div class="b_right">
                    <h4 style="margin-top:15px">جستجو بر اساس</h4>
                    <ul class="rdb_style">
                        <li class="list_none filter_style"> <asp:RadioButton  ID="RadioButton1" runat="server" Text="جدید ترین" TextAlign="Left" /></li>
                         <li class="list_none filter_style"> <asp:RadioButton ID="RadioButton2" runat="server" Text="ارزان ترین" TextAlign="Left" /></li>
                         <li class="list_none filter_style"> <asp:RadioButton Class="list_none" ID="RadioButton4" Text="گران ترین" runat="server" TextAlign="Left" /></li>
                      
                          
                      
                    </ul>

                </div>
               
                
                             <div class="b_left">

                                           <div class="head_bodypage">
                        <div class="search_pro">
    <asp:TextBox CssClass="txt_search" ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:Image ImageUrl="~/img/search.png"   CssClass="img_search" ID="Image1" runat="server" />
                            <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="Button" />
</div>

                                               <div class="subject">
                                              <ul class="d-flex">
                                                     <li class="li_style_1"><asp:Button Class="btn_style_2" ID="Button6" runat="server" Text="مشاهده همه" OnClick="Button6_Click" /></li>
                                                         <li class="li_style_1" ><asp:Button Class="btn_style_2" ID="Button7" runat="server" Text="شلوار " OnClick="Button7_Click" /></li>
                                                         <li class="li_style_1" > <asp:Button Class="btn_style_2" ID="Button8" runat="server" Text="تیشرت" OnClick="Button8_Click" /></li>
                                                         <li class="li_style_1"><asp:Button Class="btn_style_2" ID="Button9" runat="server" Text="کفش " OnClick="Button9_Click" /></li>
                                                         <li class="li_style_1" > <asp:Button Class="btn_style_2" ID="Button10" runat="server" Text="پیراهن" /></li>
                                                         <li class="li_style_1"><asp:Button Class="btn_style_2" ID="Button11" runat="server" Text="کلاه" /></li>
                                                   </ul>
                                               </div>

               </div>
                                  <div runat="server" id="product_body">
                               <%--  <div class="container">

                                     <div class="row">

                                                       

                   <div class="box   col-md-3" >
                       <div class="internal_box">
                                  <div class="image_box">
                                      <asp:Image  CssClass="img-product"  ID="Image2" runat="server" />
                           </div>
                           <div class="info_box">
                               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br />
                               <asp:Button class="btn_buy" ID="Button3" runat="server" Text="Button" />
                               <asp:Button CssClass="btn_about" ID="Button4" runat="server" Text="Button" />
                               <asp:Button CssClass="btn_like" ID="Button5" runat="server" Text="Button" />
                           </div>
                       </div>
                       <label></label>
                   </div>

                
       
                                         <div class="box   col-md-3" >
    <div class="internal_box">
               <div class="image_box">
                   <asp:Image  CssClass="img-product"  ID="Image3" runat="server" />
        </div>
        <div class="info_box">
             <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <br />
            <asp:Button class="btn_buy" ID="Button12" runat="server" Text="Button" />
            <asp:Button CssClass="btn_about" ID="Button13" runat="server" Text="Button" />
            <asp:Button CssClass="btn_like" ID="Button14" runat="server" Text="Button" />
        </div>
    </div>
                
</div>
                                         <div class="box   col-md-3" >
    <div class="internal_box">
               <div class="image_box">
                   <asp:Image  CssClass="img-product"  ID="Image4" runat="server" />
        </div>
        <div class="info_box">
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <br />
            <asp:Button class="btn_buy" ID="Button15" runat="server" Text="Button" />
            <asp:Button CssClass="btn_about" ID="Button16" runat="server" Text="Button" />
            <asp:Button CssClass="btn_like" ID="Button17" runat="server" Text="Button" />
        </div>
    </div>
                
</div>
                                         <div class="box   col-md-3" >
    <div class="internal_box">
               <div class="image_box">
                   <asp:Image  CssClass="img-product"  ID="Image5" runat="server" />
        </div>
        <div class="info_box">
              <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <br />
            <asp:Button class="btn_buy" ID="Button18" runat="server" Text="Button" />
            <asp:Button CssClass="btn_about" ID="Button19" runat="server" Text="Button" />
            <asp:Button CssClass="btn_like" ID="Button20" runat="server" Text="Button" />
        </div>
    </div>
                
</div>
                                         <div class="box   col-md-3" >
    <div class="internal_box">
               <div class="image_box">
                   <asp:Image  CssClass="img-product"  ID="Image6" runat="server" />
        </div>
        <div class="info_box">
              <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> <br />
            <asp:Button class="btn_buy" ID="Button21" runat="server" Text="Button" />
            <asp:Button CssClass="btn_about" ID="Button22" runat="server" Text="Button" />
            <asp:Button CssClass="btn_like" ID="Button23" runat="server" Text="Button" />
        </div>
    </div>
                
</div>
                 
       

    
</div>

                                     </div>--%>

                                 </div>

              


        

                    </div>


                

                </div>
        </div>
        <div  runat="server" id="mohajer"></div>
          
      

       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_prj_proConnectionString4 %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
          
      

       
    </form>
</body>
</html>

<style>
    body{
        direction:rtl;
    }
header{
    border-bottom:1px solid black;
    height:70px;
}
.search_pro {
position: relative;
  margin: 2px;
  width: 30%;
  height: 100%;

}
.img_search {
  border: 1px solid black;
  border-radius: 27px;
  width: 44px;
  height: 42px;
  position: absolute;
 margin: 12px 276px;
        top: 0px;
        right: -552px;
    }
.txt_search {
  position: absolute;
  width: 259px;
  height: 50px;
  border-radius: 31px;
  border: 1px solid;
 
  margin: 8px 65px;
}
    .btn_loguser, .btn_reguser {
        width: 139px;
        height: 45px;
        border: 2px solid;
        border-radius: 11px;
        font-size: 17px;
        float: left;
        margin-left: 12px;
        margin-top: 10px;
    }
.btn_loguser
{
  background-color: #2C2C2C;
   color: white;
   border-color: white;
 }
.btn_reguser
{
 background-color:white;
 color:#2C2C2C;
 border-color:#2C2C2C;
}


.b_right{
    width:20%;
    border:1px solid black;
    height:600px;
}
.b_left{
    width:78%;
    margin-right:4%;
    border:1px solid black;
    height:1600px;
}
.body_page{
    display:flex;
}
.head_bodypage {
  height: 70px;
  width: 100%;
  margin-top: 30px;
  display:flex
}
.box {
  height: 390px;
  margin-top:25px;
}

.image_box {
  height: 75%;
  background-color: rebeccapurple;
 width:100%;
  
}
.img-product {
   width: 243px;
  height: 263px;
}
.internal_box {
  margin: 22px 10px;
  border:1px solid;
  height: 90%;
}
.info_box {
  margin: 7px;
}
.li_style_1{
    margin-right: 55px;
  list-style: none;
}
.btn_style_2{
    border: none;
    border-bottom-width: medium;
    border-bottom-style: none;
    border-bottom-color: currentcolor;
  background-color: white;
  border-bottom: 1px solid;
  font-size:17px;
}
.subject {
  margin-top: 17px;
}
.list_none{
    list-style:none;  
}
.filter_style{
    margin-right:30px;
    
}
</style>
<script src="Scripts/jquery-3.7.0.js"></script>
<script>
    //$(".txt_search").click(function () {
    //    $(".img_search").hide();
    //})
    //$(".txt_search").mouseleave(function () {
    //    $(".img_search").show();
    //})
    //$(document).ready(function () {
    //    var x = $(".pnl_right")
    //    x.toggle()

    document.getElementById("Button1").addEventListener("click", function () {

        document.getElementById("myDiv").style.display = "block";

    });

    $("#Button1").click(function () {

        $("#myDiv").show();

    });

    //document.getElementById("Button1").addEventListener("click", function () {

    //    document.getElementById("myDiv").style.display = document.getElementById("myDiv").style.display === "block" ? "none" : "block";

    //});
        //$("#Button1").click(function () {
        //    var c = $(".pnl_right")
        //    c.toggle();

        //})


   $(".btn_loguser").hover(function () {
       $(".btn_loguser").css('border-color', 'rgb(25, 47, 116)')
       $(".btn_loguser").css('border', ' border: 5px solid;')
    })
   

  

</script>