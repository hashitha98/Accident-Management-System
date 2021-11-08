<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerpage.aspx.cs" Inherits="WEB_Course_Work.Registerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleforRegisterpage.css" rel="stylesheet" />
</head>
<body>
    <div class="loginbox1">

    <img src="1200px-User_icon_2.svg.png" alt="Alternate Text" class="user1" />
        <h2> <asp:Label ID="Label1" runat="server" Text="Register Page"></asp:Label> </h2>

    <form id="form1" runat="server">
       
            <asp:Label ID="Label2" CssClass="lb2name" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="nametxt" CssClass="txtname" placeholder="Enter Name" runat="server"></asp:TextBox>
        
            <asp:Label ID="Label3" runat="server" CssClass="lb3email" Text="Email"></asp:Label>
            <asp:TextBox ID="emailtxt" runat="server" placeholder="Enter Email" CssClass="txtemail"></asp:TextBox>
       
            <asp:Label ID="Label4" runat="server" CssClass="lb4pass" Text="Password"></asp:Label>
            <asp:TextBox ID="passtxt" runat="server" placeholder="Enter Password" CssClass="txtpass"></asp:TextBox>
        
            <asp:Label ID="Label5" runat="server" CssClass="lb5vrn" Text="Vehicle Registration Number"></asp:Label>
            <asp:TextBox ID="vrntxt" runat="server" placeholder="Enter Your Vehicle Registration Number" CssClass="txtvrn"></asp:TextBox>
        
            <asp:Label ID="Label6" runat="server" Text="Vehicle Insurance Company" CssClass="lb6vic"></asp:Label>
            <asp:TextBox ID="victxt" runat="server" placeholder="Vehicle Your Vehicle Insurance Company Name" CssClass="txtvic"></asp:TextBox>
        
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btnsubmit1" Text="Register" />
        
    </form>
        </div>
</body>
</html>
