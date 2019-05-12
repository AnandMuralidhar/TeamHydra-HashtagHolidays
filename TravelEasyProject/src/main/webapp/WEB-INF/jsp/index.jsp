<!DOCTYPE html>
<html lang="en">
<head>
<title>userSignup</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
#bdy {

    height: 100%; 
	}
	input[type=text], input[type=password] {
  color: black;
  font-size: 18px;
  border: 0;
  outline: 0;
  width: 35%;
  background: transparent;
  border-bottom: 1px solid black;
  padding: 0.5%;
}
	
	<!-- Modified styles-->
	.card {
/* 	 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
 border-right: 1px solid rgba(0, 0, 0, 0.2);
	 height: 100%;
}
.container {
	height: 100%;
	width: 100%;
	font-family: sans-serif;
}
.header {
	width: 100%;
	position: relative;
	padding: 4%;
	
}
.headerelement {
	float: left;
	width: 25%;
	line-height: 35px;
}
a{
	text-decoration: none;
}
a:hover {
text-decoration: none;
}
.leftcontent {
	float: left;
	width:40%;
	    height: 100%;
}
.rightcontent {
	float: left;
	width:60%;
	    height: 100%;
	background-color: #f7f7f7;
	
}
.headercontent {
	clear: both;
	margin-top: 40%;
	margin-left: 15%;
	width:65%;
}
html, body {
  height: 100%;
  margin: 0;
}
.registerform {
	position: relative;
	clear: both;
	margin-top: 15%;
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
    float: left;
    margin-right: 5%;
    }

	
</style>
<body>
<div class="container">
<div class="leftcontent card">
<div class="header">
<div class="headerelement"><a href="/loginPage">Sign in</a></div>
<div class="headerelement"><a href="/userSignup">User Sign up</a></div>
<div class="headerelement"><a href="/companySignup">Company Sign up</a></div>
</div>
<div class="headercontent">
<h2>Live life with no excuses, travel with no regret <br />  -Oscar Wilde.</h2>
</div>
</div>
<div class="rightcontent card">
<div class="registerform">
<form method="POST" class="form-horizontal" action="/login">

<div class="User Signup page">
<h1><b>Welcome New User</b></h1></br></br>


</br>
<!--  
<input type="submit" value="Submit"> -->
<div style="margin-left: 33%;">
<input type="submit"  class="submitbtn" name="Register" value="Register">
<p class="submitbtn" style="width: 18%;"><a style="color: #FFFFFF;" href="/logintest">Cancel</a></p>
</div>
</div>
</form>
</div>
</div>
</div>
</body>
</html>