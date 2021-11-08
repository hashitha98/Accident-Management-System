<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insurancehome.aspx.cs" Inherits="WEB_Course_Work.Insurancehome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD15OQ-xn7JDK4cQiNd0s3EFTmJyVWiBlo&callback=initMap"></script> 
<script type="text/javascript">
var markers = [
<asp:Repeater ID="rptMarkers" runat="server">
<ItemTemplate>
            {
            "title": '<%# Eval("Name") %>',
            "lat": '<%# Eval("Latitude") %>',
            "lng": '<%# Eval("Longitude") %>',
            "description": '<%# Eval("Description") %>'
        }
</ItemTemplate>
<SeparatorTemplate>
    ,
</SeparatorTemplate>
</asp:Repeater>
];
</script>

    <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
</script>
    <div id="dvMap" style="width: 500px; height: 500px">
</div>
    <link href="StyleforInsurancehome.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="wrapper">
            <div class="nav">
                <div class="logo">
                    INSURANCE
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
      
           <h1>Aproved Acident Details & Location</h1>

            <asp:GridView ID="grd" runat="server" AutoGenerateColumns="false"  CssClass="grd">
                            <AlternatingRowStyle CssClass="alt" />
                            <Columns>
                                

                                <asp:TemplateField HeaderText="Driver Location">
                                    <ItemTemplate>
                                         <%#Eval("Name") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Driver Details">
                                    <ItemTemplate>
                                         <%#Eval("Description") %>
                                        </ItemTemplate>
                                </asp:TemplateField>

                                

                                 
                            </Columns>
                            <EmptyDataRowStyle CssClass="a" />
                        </asp:GridView>
        </div>
             </div>
    </form>
</body>
</html>
