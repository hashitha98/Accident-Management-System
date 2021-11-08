<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Driverincident.aspx.cs" Inherits="WEB_Course_Work.Driverincident" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleforDriverincident.css" rel="stylesheet" /> 
</head>
<body>
    <form id="form1" runat="server">
   
            <div class="wrapper">
            <div class="nav">
                <div class="logo">
                    DRIVER
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
      
        <h1>Enter Accident Details</h1>
        

            
        
        

            <table class="input">
                
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Select Image</td>
                    <td>
                        <asp:FileUpload runat="server" ID="file_upload" /></td>
                </tr>

                <tr>
                    <td>Enter Your Contact Number</td>
                    <td>
                        <asp:TextBox ID="txt_cnum" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Enter Your Vehicle Type</td>
                    <td>
                        <asp:TextBox ID="txt_vtype" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Enter Your Vehicle Number</td>
                    <td>
                        <asp:TextBox ID="txt_vnum" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Enter Your Vehicle InsuranceCompany</td>
                    <td>
                        <asp:TextBox ID="txt_icom" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Enter More Details About Accident</td>
                    <td>
                        <asp:TextBox ID="txt_det" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Enter Accident Location</td>
                    <td>
                        <asp:TextBox ID="txt_loc" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <td class="auto-style1"><asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" /></td>
                    </td>
                </tr>

                <tr>
                    <td>
                        <td><asp:Button ID="btn_del" runat="server" Text="Delete" OnClick="btn_delete_Click" /></td>
                    </td>
                </tr>

            </table>
              <table class="output">

                <tr>
                    <td>
                        <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false" OnRowCommand="grd_RowCommand" CssClass="grd">
                            <AlternatingRowStyle CssClass="alt" />
                            <Columns>
                                <asp:TemplateField HeaderText="Driver Name">
                                    <ItemTemplate>
                                        <%#Eval("name") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Accident Image">
                                    <ItemTemplate>
                                        <asp:Image ID="img" runat="server" Width="50px" Height="40px" ImageUrl='<%#Eval("images","~/UploadedImages/{0}") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Driver Contact Number">
                                    <ItemTemplate>
                                         <%#Eval("cnum") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Driver Vehicle Type">
                                    <ItemTemplate>
                                         <%#Eval("vtype") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Vehicle Number">
                                    <ItemTemplate>
                                         <%#Eval("vnum") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Vehicle Insurance Company">
                                    <ItemTemplate>
                                         <%#Eval("icom") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="More Details">
                                    <ItemTemplate>
                                         <%#Eval("det") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Accident Location">
                                    <ItemTemplate>
                                         <%#Eval("loc") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                 <asp:TemplateField>
                                    <ItemTemplate>
                                       <asp:LinkButton ID="btnedit" runat="server" Text="Edit" CommandName="EDT" CommandArgument='<%#Eval("empid") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataRowStyle CssClass="a" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
              </div>
                </div>
        
    </form>
</body>
</html>
