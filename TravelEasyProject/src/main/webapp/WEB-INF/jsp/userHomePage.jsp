<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import ="com.traveleasy.model.Usertravelplan" %>
       <%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html><html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="/resources/script.js"></script>
        
<title>User Home Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="application/javascript">

</script>
<style>

h2{
font-family: monospace;
color: white;
text-align: center;
}
#bdy {
	font-family: monospace;
	background-color: #2196f3;
    height: 100%; 
	}

table {
	width: 100% !important;	
}


.dashboardtable{
width: 100% !important;	
}
.dthead {
	text-align: left;
}
.dtr {
	background-color: #dccdcc;
}

.lex {
float: right;
margin: 5% 10%;
background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    border: none;
    cursor: pointer;
    width: 5%;
    opacity: 0.9;
}
a {
text-decoration: none;
}

.submitbtn {
   font-family: monospace;
color: white;
text-align: center;
background-color: #0069c0;
margin-left: 500px;
  overflow: hidden;
    text-align: center;
    float: right;
}
html, body {
  height: 100%;
  margin: 0;
	background: #2196f3;
}
.previoustravelplans {
margin-left: 10%;
    padding: 2%;
}
</style>
</head>
<body>
<h2 style="padding: 2%; margin-left: 3%;">Welcome ${loggedUser.getUserfirstname()}</h2>
<div class="previoustravelplans">
<% 
 if(session.getAttribute("usertravelplans") != null)
 {
	 System.out.println("not null");
	 ArrayList<Usertravelplan> a = (ArrayList<Usertravelplan>)session.getAttribute("usertravelplans"); 
 %>
 <table class="dashboardtable">
					<thead class="dthead">
					<tr>
						<th>Plan name</th>
						<th>Country</th>
						<th>Month</th>
						<th>Budget</th>
						<!--  <th>Post Review</th> -->
									</tr>
					</thead>

<tbody class="dtr">
<% 
for(Usertravelplan u : a) 
{ %>
<tr>
	<td><%out.println(u.getPlan()); %></td>
	<td><%out.println(u.getCountry()); %></td>
	<td><%out.println(u.getMonth()); %></td>
	<td><%out.println(u.getBudget()); %></td>
<!--  
<td><button><a href="postreviews?username=<%=u.getuserName()%>&plan=<%=u.getPlan()%>">Post reviews</a></button></td>-->
</tr>
<% } %>										
</tbody>

 
</table>
	 
 
 <% }
 else
 { %>
	 <div class="noplans">
	<%  out.println("not travelled yet"); %>
	 </div>
 <%   } %>
  
 	</div>

<div>
<br /><br /><br />
<form method="GET"  action="/lex1" style="margin-right: 500px">
<button type="submit" class="w3-btn w3-blue">Travel Chat</button> 
</form>

</div>
 </body>
 <style>
 .noplans {
 text-align: center;
 }
 </style>
 <script>
	var message = $("h2").text();
	 var audio = new Audio('audio?msg=' + message);
    audio.play();
 </script>
</html>
 