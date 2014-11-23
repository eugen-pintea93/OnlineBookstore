<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Modal tutorial from BootstrapBay.com">
    <meta name="author" content="BootstrapBay.com">
    <title>Sign In</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="Bootstrap/css/login.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script type='text/javascript' src='Bootstrap/js/login.js'></script>
        <script type='text/javascript' src='Bootstrap/js/active_inactive.js'></script>
    

    

  </head>
  <body background="Bootstrap/images/nature_books_hd_wallpaper.jpeg">
 <!--  <script type='text/javascript' src='js/login.js'></script> -->


    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">E-Bookstore</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li id="home" class="active"><a href="#">Home</a></li>       
            <li><a href="About.html">About</a></li>
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Themes <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown-header">Admin & Dashboard</li>
                <li><a href="#">Admin 1</a></li>
                <li><a href="#">Admin 2</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Portfolio</li>
                <li><a href="#">Portfolio 1</a></li>
                <li><a href="#">Portfolio 2</a></li>
              </ul>
            </li>            
            <li><a href="#contact" data-toggle="modal">Contact</a></li>
            <li><a href="SignIn.jsp">Sign In</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
  <div class="container">



   
    <div class="jumbotron text-center">
      <h1>Welcome to the Online Library</h1>
    </div>
    <!--
    <div class="col-md-2">
        <h2>Login</h2>
        <input class="sign" type="text" placeholder="Username"/>
        <input class="sign" type="text" placeholder="Password"/>
    </div>
-->
<div class="form-group">

  <div class="col-md-4 pull-right">
      <h3>Don't have an account?</h3>
      <a href="#signUp" data-toggle="modal"><h4>Register now!</h4></a>
   </div> 

    <h2>Login now!</h2>
    <form action="login" method="post">
    <div class="input-group col-md-4">
      <input class="form-control" type="text" name="username" placeholder="Username">
    
    </div>
  </div>
  <div class="form-group">
 
    <div class="input-group col-md-4">
      <input class="form-control" type="text" name="password" placeholder="Password">
    
    </div>
  </div>
  
  <div class="form-group">



  <div class="radio">
          <label><input type="radio" name="userType"  value="user">User</label>
        </div>
        <div class="radio">
          <label><input type="radio" name="userType" value="admin">Admin</label>
        </div>
      </div>

  <button id="log" class="btn btn-primary">Login</button>
  </form>

  <a href="#"><h3>Forgot your password?</h3></a>
  


     
    </div>
 
    
  
  
        
    <!-- Fixed footer -->
    <div class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
      <div class="container">
        <div class="navbar-text pull-left">
          <p>� 2014 Pintea.</p>
        </div>
        <div class="navbar-text pull-right">
          <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
          <a href="#"><i class="fa fa-twitter fa-2x"></i></a>
          <a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
        </div>
      </div>
    </div>
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <div class="modal fade" id="signUp" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <form class="form-horizontal" role="form" action="SignUp" method="post">
            <div class="modal-header">
              <h4>Sign Up<h4>
            </div>
            <div class="modal-body">


            	 <div class="form-group">
                  <label for="signUp-email" class="col-sm-2 control-label">Email</label>
                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="signUp-email" name="signUp-email" placeholder="example@domain.com"/>
                   </div>
                  </div>

              <div class="form-group">
                  <label for="signUp-name" class="col-sm-2 control-label">Username</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="signUp-name" name="signUp-user" placeholder="Username"/>
                   </div>
                  </div>
                  
                    <div class="form-group">
                  <label for="signUp-name" class="col-sm-2 control-label">Real Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="signUp-name" name="signUp-rname" placeholder="First & Last Name"/>
                   </div>
                  </div>

                  <div class="form-group">
                  <label for="signUp-password" class="col-sm-2 control-label">Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="signUp-password" name="signUp-pass" placeholder="Password"/>
                   </div>
                  </div>
                 

                   <div class="form-group">
                  <label for="signUp-number" class="col-sm-2 control-label">Phone Number</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="signUp-number" name="signUp-phone" placeholder="Phone Number"/>
                   </div>
                  </div>
                  


                   <div class="form-group">
                  <label for="signUp-Adress" class="col-sm-2 control-label">Adress</label>
                  <div class="col-sm-10">
                      <textarea id="signUp-adress" name="signUp-adress" class="form-control" rows="4"></textarea>
                   </div>
                  </div>
             
            


            </div>
            <div class="modal-footer">
              <a  class="btn btn-default" onclick="DeleteText();" data-dismiss="modal" id="closeModal">Close</a>
              <button type="submit" onclick="DeleteText();" class="btn btn-primary" id="register">Register</button>
            </div>
           </form>
        </div>
      </div>
    </div>
    

    <div  class="modal fade" id="contact" role="dialog" >
      <div class="modal-dialog">
        <div class="modal-content">
          <form class="form-horizontal" role="form">
            <div class="modal-header">
              <h4>Contact</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
                  <label for="contact-name" class="col-sm-2 control-label">Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="contact-name" placeholder="First & Last Name"/>
                   </div>
                  </div>

                  <div class="form-group">
                  <label for="contact-email" class="col-sm-2 control-label">Email</label>
                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="contact-email" placeholder="example@domain.com"/>
                   </div>
                  </div>

                   <div class="form-group">
                  <label for="contact-message" class="col-sm-2 control-label">Message</label>
                  <div class="col-sm-10">
                      <textarea class="form-control" rows="4"></textarea>
                   </div>
                  </div>
                  	<h3><b>Contact us</b></h3>
             		<p>Email:eueugen93@gmail.com</p>
             		<p>Phone Number:0729104496</p>
       
            </div>
            <div class="modal-footer">
              <a id="close" class="btn btn-default" data-dismiss="modal">Close</a>
              <button id="send" type="submit" class="btn btn-primary">Send</button>
            </div>
            </form>
        </div>
      </div>
    </div>
    
<script>
$(window).load(function(){
    $('#contact').modal('hide');
});

</script>
    
   <script>
   $('#element').click(function() {
	   if($('#radio_button').is(':checked')) { alert("it's checked"); }
	});
   </script>
   

 	<script type='text/javascript' src='Bootstrap/js/active_inactive.js'></script>
 	<script type="text/javascript" src='Bootstrap/js/custom.js'></script>
 	

 	
 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
   
  </body>
</html>