<html lang="en">
<head>
<title>Company Dashboard</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<% String negative = (String)session.getAttribute("negative"); 
String positive = (String)session.getAttribute("positive"); %>
<style>
#bdy {
	font-family: monospace;
	background-color: #f7f7f7; 
    height: 100%; 
	}
.predict-container {

    width: 30%;
    padding: 10% 0;
    text-align: center;
    }
    label{
        display: inline-block;
    width: 140px;
    text-align: right;
    float: left;
    }
    input[type=text], select {
    display: block;
}
.predictdata {
display: block;
margin-left: 38%;
}
.main-container {
background-color: #FFFFFF;
	height: 100%;
	font-size: 20px;
}
.chart {
width: 50%;
height: 30%;
}
.submitbtn {
    padding: 15px 2.0rem !important;
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
a:active {
text-decoration: none;
color: #FFFFFF;
}


</style>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">


window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: ""             
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "column",
			dataPoints: [
				{ label: "negative",  y: <%=negative%> },
				{ label: "positive", y: <%=positive%>  }
			]
		}
		]
	});
	chart.render();
}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body id="bdy">
			<div class="w3-container" style="margin-top: 40px; margin-right: 50px;">
			<form method="GET" action="/logout" >
			<p align="right">
    		<input type="submit" class=" submitbtn w3-btn w3-blue" value="Logout"></p>
			</form>
			</div>
<center>
<div class="main-container">
<div class="predict-container">

	<form method="GET" class="form-horizontal" action="/predictions">
	<label for="country">Country:</label>
				<div class="predictdata">
				<input type="text" class="tripdata" name="country" placeholder="Enter destination" required><br />		
			 </div>
			   <label>Month:</label>
			   <div class="predictdata">
				 <select class="tripdata" name="month" required>
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
                 <label>Budget:</label>
                 <div class="predictdata">
				 <input type="text" class="tripdata" name="budget" placeholder="Enter budget" onkeypress="return isNumberKey(event)" required>
				<br />
				
				</div>
				<button type="submit" class="submitbtn w3-btn w3-blue" >Predict</button>
					
	</form>
	</div>
 <% if(((String)session.getAttribute("negative") != null) || ((String)session.getAttribute("positive") != null)) { %>
	 <div class="chart" id="chartContainer"></div>
	 <%} %>
</div>
</center>
</body>