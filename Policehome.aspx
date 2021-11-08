<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Policehome.aspx.cs" Inherits="WEB_Course_Work.Policehome" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleforPolicehome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       

           <div class="wrapper">
            <div class="nav">
                <div class="logo">
                    POLICE & RDA
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
      
           <h1>All Incidents Upload By Drivers</h1>

            <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false"  CssClass="grd">
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

                                 
                            </Columns>
                            <EmptyDataRowStyle CssClass="a" />
                        </asp:GridView>
              </div>

               <div class="middle">
            <h1>Enter Approved Details</h1>

       <table class="det">     
       <tr><td>
            <asp:Label ID="Label2" CssClass="lb2name" runat="server" Text="Location Name"></asp:Label></td><td>
            <asp:TextBox ID="nametxt" CssClass="txtname" placeholder="Enter Location Name" runat="server"></asp:TextBox>
        </td></tr>

           <tr><td>
            <asp:Label ID="Label3" runat="server" CssClass="lb3email" Text="Enter Latitude"></asp:Label></td><td>
            <asp:TextBox ID="lattxt" runat="server" placeholder="Enter Latitude" CssClass="txtemail"></asp:TextBox>
       </td></tr>

               <tr><td>
            <asp:Label ID="Label4" runat="server" CssClass="lb4pass" Text="Enter Longitude"></asp:Label></td><td>
            <asp:TextBox ID="lontxt" runat="server" placeholder="Enter Longitude" CssClass="txtpass"></asp:TextBox>
        </td></tr>

                   <tr><td>
            <asp:Label ID="Label5" runat="server" CssClass="lb5vrn" Text="Enter All Other Details"></asp:Label></td><td>
            <asp:TextBox ID="dettxt" runat="server" placeholder="Enter Other Details" CssClass="txtvrn"></asp:TextBox>
        </td></tr>
        
                       <tr><td></td><td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btnsubmit1" Text="Save" />
           </td></tr>
                           </table>
               </div>

        
  <div class="midup">
  
          <button type="button"> <a href="Policemap.aspx">View Accidents Location On Map</a></button>   
     
       </div> 
        <div class="midlo">
        <h1>Accidents By Vehicle Type</h1>
        <div>
            <asp:Chart ID="Chart1" runat="server" Height="389px" OnLoad="Chart1_Load" Width="590px">
                <series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </series>
                <Legends>
                <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
                </Legends>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </div>
            </div>

         <div class="bottom">
        <h1>Accidents By Location They Occur</h1>
        <br />
        
        <div>
            <asp:Chart ID="Chart2" runat="server" Height="389px" OnLoad="Chart1_Load" Width="590px">
                <series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </series>
                <Legends>
                <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
                </Legends>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </div> 
             </div>
              
               </div>
    </form>
    
</body>
</html>
