 <%@ page import ="java.util.ArrayList"%>
     <%@ page import ="com.traveleasy.model.Travelplan" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
<title>Company Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#bdy {
	 background-color: #f7f7f7; 
    height: 100%; 
	}
table {
	width: 100% !important;	
}
button{
font-family: monospace;
/* background-color:#0069c0; */
text-align: center;
text-emphasis-style: bold;
}
h2{
font-family: monospace;
/* color: white; */
margin-left: 3%;
}
h4 {
margin-left: 5%;
}
.dashboardtable{
width: 95% !important;	
    margin: 4%;
}
.dthead {
	text-align: left;
}
.dtr {
	/* background: #2196f3; */
}
.tripdata {
display: block;
margin-left: 38%;
}
input[type=text] {
    display: block;
}
select{
	display: block;
}
.company-container {
    margin: auto;
    width: 30%;
    padding: 10px;
    text-align: center;
    
}
.prediction {
float: right;
margin-right: 5%;
}
label {
  display: inline-block;
  width: 140px;
  text-align: right;
  float: left;
}
.companytravelplans {
margin-left: 4%;
}

#displayreviews {
width: 100%;
margin: 4%;
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
/* a{
color: #FFFFFF;
text-decoration:none;
}
a:hover {
color: #FFFFFF;
text-decoration:none;
} */
.bottomcontent {
	background-color: #FFFFFF;
	height: 100%;
}
.bottombuttons {
margin:0 auto;
width: 25%;
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
</style>	
</head>
	<body id="bdy">
	<div class="header" >
	<h2><strong> Welcome ${companyname}</strong> </h2>
<div class="w3-container" style="margin-right: 50px;">
  	<h4 style="float: left; width: 40%;"> ${companymessage}</h4>	
	 <form style="float: right; width: 50%; padding-left: 40%;" method="GET" action="/logout" >
	  <input type="submit" class="submitbtn w3-btn w3-blue" value="Logout">
	</form>

	</div>

	</div>
	<div class="bottomcontent">
	<div class="company-container">
	
		<form method="GET" class="form-horizontal" action="/traveldata">
	<input type="hidden" name="companyname" value="${companyname}">
	<input type="hidden" name="companyusername" value="${companyusername}">
				<label for="file">Upload Itinerary:</label>
				<div class="tripdata">
					<input type="file" name="itinerary" required><br />
					</div>
				<label for="file">Upload Image:</label>
				<div class="tripdata">	<input type="file" name="planimage" required><br />
				</div>
				<label for="country">Country:</label>
				<div class="tripdata">
               <input type="text" name="country" placeholder="Enter destination" required><br />
			   </div>
			   <label>Month:</label>
			   <div class="tripdata">
				 <select name="month" required>
                <option value="January">January</option>
                <option value="February">February</option>
                <option value="March">March</option>
                <option value="April">April</option>
                <option value="May">May</option>
                <option value="June">June</option>
                <option value="July">July</option>
                <option value="August">August</option>
                <option value="September">September</option>
                <option value="October">October</option>
                <option value="November">November</option>
                <option value="December">December</option>                   
                 </select> <br />
                 </div>
				<label>Plan name:</label>
				<div class="tripdata">
				 <input type="text" name="plan" placeholder="Enter unique plan name" required><br />
				</div>
				<label>Budget:</label>
				<div class="tripdata">
				 <input type="text" name="budget" placeholder="Enter budget" onkeypress="return isNumberKey(event)" required><br />
				</div>
				<button type="submit" class="submitbtn w3-btn w3-blue">Submit</button>
		</form>		
	</div>
	<div class="bottombuttons">
	<div class="prediction">
	<button type="submit" class="submitbtn w3-btn w3-blue"><a style="color: white;"target="_blank" href="prediction">Predict</a></button>
	</div>
	<div class="companytravelplans">
			 <form method="GET" action="/companytravelplans">

		<input type="hidden" name="companyname" value="${companyname}">
		<input type="hidden" name="companyusername" value="${companyusername}">
		<button type="submit" class="submitbtn w3-btn w3-blue" >See your plans</button>
		</form>
		</div>
		</div>
	 <% 
 if(session.getAttribute("travelplan") != null)
 {
 ArrayList<Travelplan> a = (ArrayList<Travelplan>)request.getAttribute("travelplan"); 
 System.out.println("hi"); 
 %>
 <table class="dashboardtable">
					<thead class="dthead">
					<tr>
						<th>Plan</th>
						<th>Country</th>
						<th>Month</th>
						<th>Budget</th>
						<th>Itinerary Image</th>
						<th>Plan Image</th>
						<th>Delete</th>
						</tr>
					</thead>
<tbody class="dtr">


<c:forEach items="${travelplan}" var="item">
 <tr>
	<td>${item.plan} </td>
	<td>${item.country}</td>
<td>${item.month}</td>
	<td>$${item.budget}</td>
<td><a href="${item.itineraryimageurl}">Itinerary image</a></td>
<td><a href="${item.planimageurl}">Itinerary image</a></td>
	<td><form method="GET" action="/travelplandelete">
	<input type="hidden" name="companyname" value="${companyname}">
		<input type="hidden" name="companyusername" value="${companyusername}">
		<input type="hidden" name="travelplanid" value="${item.travelPlanId}">
	<button><span class="glyphicon glyphicon-trash"></span></button>
	</form></td>
	<!--  
<td><input type="hidden" id="plan" value="${item.plan}">

<button type="submit" id="getreviews" value="${item.plan}" class="getreviews" onClick="getreviews('${item.plan}')" >Reviews</button> </td>
-->
</tr>										
 </c:forEach>
</tbody>
</table>
 <% }
 %>
  </div>
   
 
  
  
  <div id="displayreviews"></div>
  </div>
	</body>
	<script>
	function isNumberKey(evt){
	    var charCode = (evt.which) ? evt.which : event.keyCode
	    if (charCode > 31 && (charCode < 48 || charCode > 57))
	        return false;
	    return true;
	}
	function editalert(){
		alert("Please upload the plan with same name to update!!!")
	}
	 function getreviews(plan) {
		 $.get("retrievereviews",{plan:plan},function(data){

	     $("#displayreviews").html(data);
		 
	     });
	 } 
	
	 var message = $("h3").text();
		console.log("message: "+message);
		 var audio = new Audio('audio?msg=' + message);
	     audio.play(); 
	     
	</script>
	
</html>
