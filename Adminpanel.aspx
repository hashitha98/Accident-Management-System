<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminpanel.aspx.cs" Inherits="WEB_Course_Work.Adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleforAdminpanel.css" rel="stylesheet" />
</head>
<body>
    <form id="forma" runat="server">
         <div class="wrapper">
            <div class="nav">
                <div class="logo">
                    ADMIN
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="Homepage.aspx">HOME</a></li>
                        <li><a href="Loginpage.aspx">LOGIN</a></li>
                        <li><a href="Policelogin.aspx">POLICE</a></li>
                        <li><a href="Insurancelogin.aspx">INSURANCE</a></li>
                        <li><a href="Rdalogin.aspx">RDA</a></li>
                        <li><a href="Adminlogin.aspx">ADMIN</a></li>
                        <li><a href="Registerpage.aspx">REGISTER</a></li>
                    </ul>
                </div>
            </div>
            
            
        

            
            
          <div class="header">
      
           <h1>Create Account For Police</h1>
              <table class="police">
            <tr><td><asp:Label ID="Label1" runat="server" Text="Enter Branch Name" CssClass="lb1branch"></asp:Label></td>
                <td>
            <asp:TextBox ID="branchtxt" CssClass="txtemail" placeholder="Enter Branch Name" runat="server"></asp:TextBox>
        </td></tr>

       
                  <tr>
                      <td><asp:Label ID="Label2" runat="server" Text="Enter User Name" CssClass="lb1user"></asp:Label></td>
        <td><asp:TextBox ID="pusertxt" runat="server" CssClass="txtuser" placeholder="Enter User Name"></asp:TextBox>
                      </td></tr>

                  <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Enter Password" CssClass="lb3pass"></asp:Label></td>
        <td><asp:TextBox ID="ppasstxt" runat="server" CssClass="txtpass" placeholder="**********"></asp:TextBox></td>
        </tr>
            <tr><td></td>
                  <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="btnsubmit"/>
       
            <asp:Label ID="Label4" runat="server"></asp:Label>
                </td></tr>  </table>
              </div>

             <div class="middle">
             <h1>Create Account For RDA</h1>
                 <table class="rda">
                     <tr><td>
            <asp:Label ID="Label5" runat="server" Text="Enter Branch Name" CssClass="lb5branch"></asp:Label></td>
            <td><asp:TextBox ID="rbranchtxt" CssClass="txtbranch" placeholder="Enter Branch Name" runat="server"></asp:TextBox>
                         </td></tr>
        
                         <tr><td>
        <asp:Label ID="Label6" runat="server" Text="Enter User Name" CssClass="lb1user"></asp:Label></td><td>
        <asp:TextBox ID="rusertxt" runat="server" CssClass="txtuser" placeholder="Enter User Name"></asp:TextBox>
                             </td></tr>

                             <tr><td>
            <asp:Label ID="Label7" runat="server" Text="Enter Password" CssClass="lb3pass"></asp:Label></td><td>
        <asp:TextBox ID="rpasstxt" runat="server" CssClass="txtpass" placeholder="**********"></asp:TextBox>
                                 </td></tr>
        
                                 <tr><td></td>
            <td><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" CssClass="btnsubmit"/>
                                </td></tr>
                     </table>
                 </div>

            <div class="bottom">
             <h1>Create Account For Insurance Company</h1>
                 <table class="ic">
                     <tr><td>

            <asp:Label ID="Label8" runat="server" Text="Insurance Company Name" CssClass="lb5branch"></asp:Label></td><td>
            <asp:TextBox ID="icntxt" CssClass="txtbranch" placeholder="Enter Insurance Company Name" runat="server"></asp:TextBox>
                         </td></tr>

                          <tr><td>
                <asp:Label ID="Label9" runat="server" Text="Enter Branch Name" CssClass="lb5branch"></asp:Label></td><td>
            <asp:TextBox ID="ibranchtxt" CssClass="txtbranch" placeholder="Enter Branch Name" runat="server"></asp:TextBox>
        </td></tr>
                               <tr><td>
        <asp:Label ID="Label10" runat="server" Text="Enter User Name" CssClass="lb1user"></asp:Label></td>
       <td>  <asp:TextBox ID="iusertxt" runat="server" CssClass="txtuser" placeholder="Enter User Name"></asp:TextBox>
                                   </td></tr>

                                    <tr><td>
            <asp:Label ID="Label11" runat="server" Text="Enter Password" CssClass="lb3pass"></asp:Label></td>
        <td><asp:TextBox ID="ipasstxt" runat="server" CssClass="txtpass" placeholder="**********"></asp:TextBox></td>
                 </tr>
                                         <tr><td></td><td>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" CssClass="btnsubmit"/>
                                              </td></tr>

                         </table>
                         </div>
            
        </div>
    </form>
</body>
</html>
