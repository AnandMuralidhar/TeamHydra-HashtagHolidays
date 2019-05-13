<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reviews</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head><style>

body{
font-family: monospace;
background-color: #6ec6ff;
text-align: center;
font-size: 38px;
color: white;
}
</style>
<body>
<%
   String q = request.getParameter("plan");
System.out.println(q);
   try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://cloudproject.c7m1brswcf1h.us-east-1.rds.amazonaws.com:3306/cloudproject", "cloudproject", "teamhydra282!");
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet r = smt.executeQuery("select * from reviews where(plan='" + q + "');");
        int count = 0;
        while (r.next()) { 
        	String name = r.getString("userName"); %>
    <div class="dynamicreviews" style="width: 30%; float: left;">
   
     <img src="<%=r.getString("imageurl")%>" alt="" height="300" width="300" />   
       <p>Username:  <%=r.getString("userName")%> </p> 
     <p>Comment:  <%=r.getString("comment")%> </p> 
     </div> 
     <% count = count+1;
          
        } 
       
			if (count == 0)
			{ %>
				<p style="text-align: center;">No reviews! </p>
			<% }
       con.close();  
   } catch (Exception e) {
        e.printStackTrace();
   }
%>

</body>
</html>