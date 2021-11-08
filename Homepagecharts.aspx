<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepagecharts.aspx.cs" Inherits="WEB_Course_Work.Homepagecharts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styleforhomepagecharts.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="nav">
                <div class="logo">
                    LOGO
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
                <h1>Accidents By Vehicle Type</h1>
                  <div class="chart1">
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
            
          <div class="middle">
      
        <h1>Accidents By Location They Occur</h1>
        

               <div class="chart2">
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
