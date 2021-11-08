<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Policemap.aspx.cs" Inherits="WEB_Course_Work.Policemap" %>


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
    <div id="dvMap" style="width: 800px; height: 800px">
</div>
    <link href="StyleforPolicemap.css" rel="stylesheet" />
</head>
<body>
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
    
    <h1>Approved Accidents On Map</h1>
   </div>
         </div>
</body>
</html>
