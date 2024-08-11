<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_page.aspx.cs" Inherits="prj_tes_p1.Product_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     

    
          
        <div class="page_header">
            <asp:Button ID="Button1" Class="btn_loguser"  PostBackUrl="~/User_log.aspx" runat="server" Text="ورود/ ثبت نام"  />
             <asp:Button ID="Button3" Class="btn_view_products"  PostBackUrl="~/View_products_page.aspx" runat="server" Text="مشاهده محصولات"  />

        </div>
    
       <div class="container">

    <div class="row">

         <div class="bode_page">

        <div class="right_pnl col-3">
             <div class="main_body">

     <div class="header_pnl">
         <p class="text_header">  ثبت محصول</p>
     </div>
        <div class="row_pnl">
     <label>ایدی</label> 
     <asp:Label ID="Lbl_id" runat="server" Text="ff"></asp:Label>
 </div>
     <div class="row_pnl">
         <label>نام محصول</label>
         <asp:TextBox Class="txt_style" ID="txt_name" runat="server"></asp:TextBox>
     </div>

     <div class="row_pnl">
         <label>تلفن سازنده</label>
         <asp:TextBox Class="txt_style" ID="Txt_phone" runat="server"></asp:TextBox>
     </div>

     <div class="row_pnl">
         <label>جیمیل</label>
         <asp:TextBox Class="txt_style" ID="Txt_gmail" runat="server"></asp:TextBox>
     </div>

     <div class="row_pnl">
         <label>وضعیت</label>
         <asp:TextBox Class="txt_style" ID="txt_vasiat" runat="server"></asp:TextBox>
     </div>

     <div class="row_pnl">
         <label>شماره کاربر</label>
         <asp:TextBox Class="txt_style" ID="Txt_phone_user" runat="server"></asp:TextBox>
     </div>
             <div class="row_pnl">
        
                 <asp:Image ID="Image1" runat="server" />
                 <div class="row_pnlimage">
                     <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                       <asp:FileUpload CssClass="file_uplad" ID="FileUpload1" runat="server" />
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 </div>
   
         </div>
     <div class="row_pnl">
      
         <asp:Button Class="btn_confirm" ID="Btn_new" runat="server" Text="جدید" OnClick="Btn_new_Click"  />
         <div>
               <asp:Button Class="btn_style2" ID="Btn_edit" runat="server" Text="ویرایش" OnClick="Btn_edit_Click"  />  
              <asp:Button Class="btn_style2" ID="Btn_delet" runat="server" Text="حذف" OnClick="Btn_delet_Click"  />
         </div>
         <asp:Button Class="btn_confirm" ID="Btn_confirm" runat="server" Text="تایید" OnClick="Btn_confirm_Click"  />
         
       
     </div>

 </div>
          </div>

        <div class="left_pnl col-9 ">
            <div class="dgw_pnl">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="1000px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Name" HeaderText="نام" SortExpression="Name" />
                        <asp:BoundField DataField="ProduceDate" HeaderText="ProduceDate" SortExpression="ProduceDate" />
                        <asp:BoundField DataField="manufactorPhone" HeaderText="manufactorPhone" SortExpression="manufactorPhone" />
                        <asp:BoundField DataField="manufactureEmail" HeaderText="manufactureEmail" SortExpression="manufactureEmail" />
                        <asp:BoundField DataField="IsAvailble" HeaderText="IsAvailble" SortExpression="IsAvailble" />
                        <asp:BoundField DataField="phone_user" HeaderText="phone_user" SortExpression="phone_user" />
                        <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_prj_proConnectionString3 %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
            </div>
            </div>

        </div>
        </div>
       </div>
   
    </form>
</body>
</html>

<style>
  body {
  direction: rtl;
  background-color: #1e4562;
}
    .page_header{
        height:50px;
    }
    .bode_page{
        display:flex;
    }
.left_pnl{
    border :1px solid black;
    width:73%;
    height:672px;
    margin-right:20px;
}
.right_pnl{
    border: 1px solid black;
    width:25%;
    height:672px;
}
.btn_loguser,.btn_view_products {
  width: 160px;
  height: 40px;
  border: 1px solid black;
  border-radius: 15px;
   background-color: #2C2C2C;
  color: white;
  font-size: 17px;
  float: left;
  margin-left: 30px;
  margin-top: 1px;
}
  .row_pnl {
     margin-top: 9px;
     margin-right: 20px;
     display: inline-grid;
     font-size: 15px;
     color:aliceblue;
   }
 .txt_style {
  margin-top: 4px;
  width: 220px;
  height: 28px;
  border-radius: 10px;
  border: 0.3px solid #d4d1dc;
  background-color: #2C2C2C;
  color: aliceblue;
  font-size: 18px;
}
.btn_confirm {
  width: 320px;
  height: 40px;
  border-radius: 10px;
  margin-top: 2px;
  border: 1px solid;
  background-color: #2C2C2C;
  color: white;
  font-size: 17px;
}
 .text_header{
      text-align: center;
      font-size: 22px;
       margin-top:2px;
       color:aliceblue;
    }
.upload_image {
  width: 100px;
  height: 30px;
  border: 1px solid;
  border-radius: 19px;
  margin-top: 3px;
}
 .file_uplad{
    height:30px;
     width: 200px;
 }
 #Image1 {
  width: 120px;
  height: 120px;
  border-radius: 73px;
  border: 1px solid;
}
 .btn_style2 {
  width: 157px;
  height: 40px;
  border-radius: 10px;
  margin-top: 2px;
  border: 1px solid;
  background-color: #2C2C2C;
  color: white;
  font-size: 17px;
}
 .dgw_pnl {
  margin: 27px 44px;
}
</style>
 <script src="Scripts/jquery-3.7.0.js"></script>
<script>

    $("#Btn_new").mousemove(function () {
        $("#Btn_new").css('background', 'rgb(25, 47, 116)')
    })
    $("#Btn_new").mouseleave(function () {
        $("#Btn_new").css('background', '#2C2C2C')
    })
    $("#Btn_edit").mousemove(function () {
        $("#Btn_edit").css('background', 'rgb(25, 47, 116)')
    })
    $("#Btn_edit").mouseleave(function () {
        $("#Btn_edit").css('background', '#2C2C2C')
    })
    $("#Btn_delet").mousemove(function () {
        $("#Btn_delet").css('background', 'rgb(25, 47, 116)')
    })
    $("#Btn_delet").mouseleave(function () {
        $("#Btn_delet").css('background', '#2C2C2C')
    })
    $("#Btn_confirm").mousemove(function () {
        $("#Btn_confirm").css('background', 'rgb(25, 47, 116)')
    })
    $("#Btn_confirm").mouseleave(function () {
        $("#Btn_confirm").css('background', '#2C2C2C')
    })
    $(".btn_loguser").mousemove(function () {
        $(".btn_loguser").css('background', 'rgb(25, 47, 116)')
    })
    $(".btn_loguser").mouseleave(function () {
        $(".btn_loguser").css('background', '#2C2C2C')
    })
    $(".btn_view_products").mousemove(function () {
        $(".btn_view_products").css('background', 'rgb(25, 47, 116)')
    })
    $(".btn_view_products").mouseleave(function () {
        $("btn_view_products").css('background', '#2C2C2C')
    })

    

    


    
</script>
