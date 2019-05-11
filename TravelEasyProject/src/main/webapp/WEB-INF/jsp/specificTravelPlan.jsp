<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import ="com.traveleasy.model.Reviews" %>
       <%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

</style>
</head>
<body id="bdy">

	<div class="w3-container" style="margin-top: 40px; margin-right: 50px;">
	<form method="POST" action="/logout" style="float: right; padding-left: 1%;" >
	<p align="right">
    <input type="submit" class="w3-btn w3-black" value="Logout"></p>
	</form>
	<form method="GET" action="/userTravelPlans" style="float:right;">
	<p align="right">
    <input type="submit" class="w3-btn w3-black" value="Back"></p>
	</form>
	</div>

${message1}
<div class="container">
  <div style="text-align:center">

    <h2>Plan details</h2><br />
  

        <h4>Plan Name:  ${SpecificTravelPlan.plan} </h4><br />
  
        <h4>Country:  ${SpecificTravelPlan.country} </h4><br />
       
       <h4> Month:  ${SpecificTravelPlan.month} </h4><br /> 
       
       <h4> Budget:  ${SpecificTravelPlan.budget} </h4><br /> 
       <a href="/selectPlan">Select This Plan</a>
      
    </div>
    
    
    <input type="hidden" id="plan" value="${SpecificTravelPlan.plan}">
    
    
<%-- <button type="submit" id="getreviews" class="getreviews" onClick="getreviews('${SpecificTravelPlan.plan}')" >Reviews</button>
<div id="displayreviews"></div> --%>
<div id="displayreviews" style="width: 100%;">
 <a href="/getReviews?plan=${SpecificTravelPlan.plan}"><h4><strong><font color= "black" style="margin-left: 690px" >Show Reviews</font></strong></h4></a>
    
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
<style>
.container {
clear: both;
}

</style>
</body>
</html>












