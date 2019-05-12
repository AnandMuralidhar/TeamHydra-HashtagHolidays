<!DOCTYPE html>
<html lang="en">
<head>
<title>loginPage</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
     content="19996480139-hbsng2ng7kfnl9cl4pil2a1m7ulr6pn9.apps.googleusercontent.com">


</head>

<style> 
#bdy {
    /* The image used */
  /* background-image: url("https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920");
	*/
	/* background-color: #d2efeb;
    /* Full height */
   height: 100%; 
  

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
}

#container1{
  font-family: "Times New Roman", Times, serif;
  font-size: 20px;
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

/* modified styles */
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
.leftcontent {
	float: left;
	width:40%;
}
.rightcontent {
	float: left;
	width:60%;
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
.loginform {
	position: relative;
	clear: both;
	margin-top: 20%;
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


<div class="loginform" id="container1">
<h1><b> Login Page </b></h1></br>
<h1><font>${message}</font></h1>
<form method="POST" class="form-horizontal" action="/customlogin">
<p>
<input type="text" id="username" placeholder="Enter User name" name="username"  required></p>
<p>
<input type="password" id="pwd" placeholder="Enter password" name="pwd" required></p>
<p></p></br>
 <input type="radio" name="role" value="user" checked> user&ensp;&ensp;
  <input type="radio" name="role" value="company">Travel Company
  <p></p>
<input type="submit"  class="submitbtn" name="Login" value="Login">


</div>
<!--  
<div><a><div class="g-signin2" data-onsuccess="onSignIn"></a></div></br> -->

<script>
	function onSignIn(googleUser) {
      var profile = googleUser.getBasicProfile();
      console.log('ID: ' + profile.getId());
      console.log('Name: ' + profile.getName());
      console.log('Image URL: ' + profile.getImageUrl());
      console.log('Email: ' + profile.getEmail());
      console.log('id_token: ' + googleUser.getAuthResponse().id_token);

   
      var redirectUrl = 'glogin';
      //using jquery to post data dynamically
      var form = $('<form action="' + redirectUrl + '" method="post">' +
                          '<input type="text" name="id_token" value="' +
                           googleUser.getAuthResponse().id_token + '" />' +
                                                                '</form>');
    $('body').append(form);
    form.submit();
    }

	</script>

</form>
</div>
</div>
</body>
</html>





