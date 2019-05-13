<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
#bdy {
    
	background-color: #f7f7f7; 
    height: 100%; 
	
    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
}

div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 280px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
.submitbtn {
    padding: 15px 2.0rem;
  background-color: #4CAF50; 
    box-shadow: 0 0 6px rgba(0,0,0,.24), 0 8px 12px rgba(0,0,0,.14);
    border-radius: 500px;
     color: #fff; 
    font-size: 19px;
    font-weight: 400;
    line-height: 1.2;
    overflow: hidden;
    text-align: center;
}
.bottomcontent {
background-color: #FFFFFF;
}

</style>


</head>
<body id="bdy">

<div class="w3-container" style="margin-top: 20px; margin-right: 50px;">
	<form method="GET" action="/logout" >
	<p align="right">
    <input type="submit" class="submitbtn w3-btn w3-blue" value="Logout"></p>
	</form>
	</div>

<div class="bottomcontent">
  <c:forEach items="${Travelplans}" var="item">
	<div class="gallery">
  <a target="_blank" href="${item.planimageurl}">
    <img src="${item.planimageurl}" alt="Cinque Terre" style="width:280px; height: 280px">
    
  </a>
  <div class="desc">${item.plan}</div>
  <div class="desc"><a href="/getTravelPlanByName?planName=${item.plan}">View</a>                 
  <a href="/downloadTravelPlanItinerary?itinerary=${item.itineraryimageurl}&companyname=${item.companyusername}&plan=${item.plan}">Download</a></div>
 
  </div>

   </c:forEach>
</div>
</body>
</html>