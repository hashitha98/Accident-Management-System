<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="WEB_Course_Work.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleforAdminlogin.css" rel="stylesheet" />
</head>
<body>
    <form >
        
        <div class="loginbox">
            <img src="1200px-User_icon_2.svg.png" alt="Alternate Text" class="user"/>
            
            <h2><asp:Label ID="Label1" runat="server" Text="ADMIN Login"></asp:Label></h2>
        <form id="form2" runat="server">
       
            
        
            <asp:Label ID="Label2" runat="server" Text="User Name" CssClass="lb1email"></asp:Label>
            <asp:TextBox ID="usertxt" CssClass="txtemail" placeholder="Enter Name" runat="server"></asp:TextBox>
        
        <asp:Label ID="Label3" runat="server" Text="Password" CssClass="lb1pass"></asp:Label>
        <asp:TextBox ID="passtxt" runat="server" CssClass="txtpass" placeholder="**********"></asp:TextBox>
        
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="btnsubmit"/>
       
            <asp:Label ID="Label4" runat="server"></asp:Label>

            <asp:HyperLink ID="HyperLink1" CssClass="register" runat="server" NavigateUrl="~/Homepage.aspx">Only Admin Can Log In. If you're not Admin Click Here</asp:HyperLink>
      
    </form>
    </div>iv>
    </form>
</body>
</html>
