<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WEB_Course_Work.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleforHomepage.css" rel="stylesheet" />
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD15OQ-xn7JDK4cQiNd0s3EFTmJyVWiBlo&callback=initMap"></script> 
<script type="text/javascript">
var markers = [
<asp:Repeater ID="rptMarkers" runat="server">
<ItemTemplate>
            {
            "title": '<%# Eval("Name") %>',
            "lat": '<%# Eval("Latitude") %>',
            "lng": '<%# Eval("Longitude") %>',
            
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
                
            }
        }
</script>
    
</head>
<body>
    
        <div class="wrapper">
            <div class="nav">
                <div class="logo">
                    AMS
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
                <h1>Traffic Accident Assist</h1>
                <button type="button"> <a href="Loginpage.aspx">Report Accident</a></button>
            </div>

            <div class="middle">
                <h2>Accidents Locations</h2>
               
            </div>

             <div id="dvMap" style="width: 500px; height: 500px;" >
</div>
            <div class="bottom">
                <h2>View Accident Charts</h2>
               <button type="button"> <a href="Homepagecharts.aspx">View Charts</a></button>
            </div>
            
        </div>     
</body>
</html>
