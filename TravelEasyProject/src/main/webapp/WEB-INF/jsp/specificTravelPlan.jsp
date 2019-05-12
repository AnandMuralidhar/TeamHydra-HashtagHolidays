<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import ="com.traveleasy.model.Reviews" %>
       <%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="application/javascript">
 function getreviews(plan) {
	 alert(plan);	
	 $.get("retrievereviews",{plan:plan},function(data){
System.out.println(data);
     $("#displayreviews").html(data);
	 
     });
 }

</script>
<style>
#bdy {
	background-color: white;
    height: 100%; 
	}
body {
  font-family: Times New Roman, Times, serif;
}

* {
    box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

/* Style the container/contact section */
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 10px;
    height: 70%;
}

/* Create two columns that float next to eachother */
.column {
    float: centre;
    width: 100%;
    margin-top: 6px;
    margin-left: 60px
    padding: 50px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
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
    float: right;
}
html, body {
  height: 100%;
  margin: 0;
}

.leftcontent {
float: left;
width: 30%;
padding: 8%;
}
.rightcontent {
float: left;
width: 60%;
margin-top: 8%;
}
.footer {
    border-top: 4px solid #4CAF50; 
}

.footer span {
font-size: 35px;
    color: black;
}
.user-controls {
position: absolute;
    margin-top: -20px;
    right: 15%;
    height: 40px;
    padding: 0px;
    background: #f2f2f2;
}

.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    float: left;
    min-width: 182px;
    padding: 5px 0;
    margin: 2px 0 0;
    list-style: none;
    font-size: 0px;
    text-align: left;
    background-color: #fff;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,0.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,0.175);
    box-shadow: 0 6px 12px rgba(0,0,0,0.175);
    background-clip: padding-box;
}
.user-controls li {
display: inline-block;
    width: 40px;
    height: 40px;
    list-style: none;
    margin: 0 10px;
}

.footercontainer {
background-color: #f2f2f2; 
height: 100%;
}
</style>
<script>
function popup(url)
{
params = 'width='+screen.width;
params += ', height=' + screen.height;
params +='resizable = yes'
//params += ', top=0, left=0'
params += ', fullscreen=yes';
newwin=window.open(url,'windowname4', params);
if (window.focus) {newwin.focus()}
return false;
}
function openwindow(url,type,imgUrl,metadescription) {
//metadescription = decodeURIComponent('');
//metadescription = metadescription.replace("&#39;", "'");
if(type=='facebook')
{
//var url1= location.href;
var url1= "http://anandmuralidhara.com";
url= "https://www.facebook.com/sharer/sharer.php?u="+url1;
}
else if(type=='twitter')
{
var url1 = "http://anandmuralidhara.com";
url = "https://twitter.com/intent/tweet?url=" + url1 + "&text=" + metadescription;
}
else if (type == 'pinterest')

{

    var url1 = "http://anandmuralidhara.com";
    imgUrl = imgUrl;
    url = "https://www.pinterest.com/pin/create/button/?url=" + url1 + "&media=" + imgUrl + "&description=" + metadescription;
}

popup(url);
}
 
function showSocialIcons() {
	var icons = document.getElementById('socialicon'); 
	if(icons.style.display == "none") {
		icons.style.display = "block";
		
	}
	else {
		icons.style.display = "none";
	}
}
</script>
</head>
<body id="bdy">
	<div class="w3-container" style="margin-top: 40px; margin-right: 50px;">
	<form method="POST" action="/logout" style="float: right; padding-left: 1%;" >
	<p align="right">
    <input type="submit" class="submitbtn" value="Logout"></p>
	</form>
	<form method="GET" action="/userTravelPlans" style="float:right;">
	<p align="right">
    <input type="submit" class="submitbtn" value="Back"></p>
	</form>
	</div>

${message1}
<div class="container">
<div class="leftcontent">
<img src="${SpecificTravelPlan.planimageurl}" alt="Cinque Terre" style="width:280px; height: 280px">
</div> 
<div class="rightcontent">
  <div style="text-align:center">

    <h2>Plan details</h2><br />
  

      <p>  <b>Plan Name: </b>  ${SpecificTravelPlan.plan} </p>
  
        <p>  <b>Country: </b> ${SpecificTravelPlan.country} </p>
       
       <p>  <b> Month:</b>  ${SpecificTravelPlan.month} </p>
       
      <p>  <b> Budget:  </b>${SpecificTravelPlan.budget} </p>
       <a href="/selectPlan">Select This Plan</a>
      
    </div>
    
    
    <input type="hidden" id="plan" value="${SpecificTravelPlan.plan}">
    
    
<%-- <button type="submit" id="getreviews" class="getreviews" onClick="getreviews('${SpecificTravelPlan.plan}')" >Reviews</button>
<div id="displayreviews"></div> --%>
<div id="displayreviews" style="width: 100%;">
 <a href="/getReviews?plan=${SpecificTravelPlan.plan}"><h4><strong><font color= "black" style="margin-left: 379px" >Show Reviews</font></strong></h4></a>
   </div> 
     <% 
 if(session.getAttribute("planReview") != null)
 {
	 ArrayList<Reviews> a = (ArrayList<Reviews>)session.getAttribute("planReview"); 

	 System.out.println("Value is there");
	 for(Reviews u : a) 
	 { %>
	 <div class="dynamicreviews" style="width: 30%; padding:2%; float: left;" >
	 <a target="_blank" href="<%u.getImageUrl();%>">
    <img src="<%=u.getImageUrl()%>" alt="Cinque Terre" style="width:280px; height: 280px">
  </a> <br />
  <%out.println(u.getuserName()); %> <br />
  <div class="desc"><%u.getComment();%></div> 
	 
	 
	<%  out.println(u.getComment()); %> 
	</div>
<% 	 } 
 }
 %> 
    
    
   
</div>
 </div>
 <div class="footercontainer">
 <div class="footer">
 <!-- social share code -->
 <ul class="user-controls">
   <li class="dropdown " onclick="showSocialIcons()">
      <a class="dropdown-toggle" data-toggle="dropdown" href="Javascript:void(0)">
      <span class="fa fa-share-alt"></span>
      </a>
       <ul class="dropdown-menu social-icons" id="socialicon" style="display: none;">
 <li><a onclick="openwindow('','pinterest','${SpecificTravelPlan.planimageurl}','${SpecificTravelPlan.plan}');" href="#"><span style="color: #c8232c;" class="fa fa-pinterest" style="font-size:33px"></span></a>
 </li>
 <li><a onclick="openwindow('','twitter','${SpecificTravelPlan.planimageurl}','${SpecificTravelPlan.plan}');" href="#"><span style="color: #1da1f2;" class="fa fa-twitter" style="font-size:33px"></span></a>
 </li>
 <li><a onclick="openwindow('','facebook','${SpecificTravelPlan.planimageurl}','${SpecificTravelPlan.plan}');" href="#"><span style="color: #3b5998;" class="fa fa-facebook-square" style="font-size:33px"></span></a>
 </li>
 </ul>
 </li>
 <li>
 <a href="mailto:?subject=Amazing Travel plan&amp;body=Hi,%0D%0A%0D%0AI found this travel plan in #Holidays and thought you might like it. %0D%0A%0D%0A%0D%0A%0D%0ATo read more, login to : http:localhost://3000">
 <span class="fa fa-envelope"></span>
 </a>
 </li>
 </ul>
 </div>
 </div>
<style>
.container {
clear: both;
}

</style>
</body>
</html>












