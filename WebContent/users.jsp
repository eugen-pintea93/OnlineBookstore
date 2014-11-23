<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="User.User"%>
<%@ page import="User.UserList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Contact Form tutorial from BootstrapBay.com">
    <meta name="author" content="BootstrapBay.com">
    <title>Book Store</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type='text/css'>
    <link href="Bootstrap/css/custom.css" rel="stylesheet" type='text/css'>

    
   <!--  <link href="Bootstrap/css/animate.css" rel="stylesheet" type='text/css'> -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<title>Users</title>
</head>

<body ng-app="DemoApp"> 
<style>
body {
    background-image: url("img/crap/letters-flying.jpg");
    background-repeat: repeat-x;
    background-position: center top;
    margin-bottom: 500px;
}
</style>
    
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
          <a id="logo-book" class="animated bounceInRight" href="#"><img src="img/crap/logo.png" width="65px" height="60px">Only Good Books</a>

          <a class="navbar-brand" href="#">New Wave BookStore</a>

        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="#">Home</a></li>       
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
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<div data-ng-controller="SimpleController">
    Search User:
    <br/>
    <input type="text" ng-model="username"/>
 <!-- <ul>
    <li data-ng-repeat="cust in Customer |filter:Fname">{{cust.Fname}}</li>
    ng-class-even="'even'"
        ng-class-odd="'odd'"
</ul>  -->
<p id="p-users"><b>Selected item: {{selected.username}}  {{selected.password}} {{selected.realName}}  {{selected.email}} {{selected.city}}  {{selected.country}} {{selected.phoneNumber}}</b></br> </p>

<div class="usersTable">
<table border="2" >
    <tr>
        <td>Username</td>
        <td>Password</td>
        <td>Real Name</td>
        <td>Email</td>
        <td>City</td>
        <td>Country</td>
        <td>Address</td>
        <td>PhoneNumber</td>
    </tr>
    <tr ng-repeat="cust in Customer | filter:username"
        ng-click="showSelectedElement(cust)"
    >
        <td>{{cust.username}}</td>
        <td>{{cust.password}}</td>
        <td>{{cust.realName}}</td>
        <td>{{cust.email}}</td>
        <td>{{cust.city}}</td>
        <td>{{cust.country}}</td>
        <td>{{cust.address}}</td>
        <td>{{cust.phoneNumber}}</td>
    </tr>
</table>
</div>

</div>


<script>
angular.module("DemoApp", []).controller('SimpleController', function ($scope) {
	$scope.Customer=[{}];
	<%
	UserList users = (UserList)session.getAttribute("users");
	for(User u:users.getUserList())
	{
	%>
	
        $scope.Customer.push({ username: '<%=u.getUsername() %>', password: '<%=u.getPassword() %>', realName:'<%=u.getRealname() %>',email:'<%=u.getEmail() %>',
        	city:'<%=u.getCity() %>',country:'<%=u.getCountry() %>',address:'<%=u.getAddress() %>',phoneNumber:'<%=u.getPhoneNumber() %>' });
        <% } %>
       
        $scope.showSelectedElement = function(c)
        {
            $scope.selected = c;
        };
    });
</script>






 <div class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        <div class="container">
            <div class="navbar-text pull-left">
                <p>© 2014 BookStore</p>
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
    <div class="modal fade" id="contact" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="form-horizontal" role="form">
                    <div class="modal-header">
                        <h4>Contact<h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="contact-name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="contact-name" placeholder="First & Last Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="contact-email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="contact-email" placeholder="example@domain.com">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="contact-message" class="col-sm-2 control-label">Message</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" rows="4"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-default" data-dismiss="modal">Close</a>
                        <button type="submit" class="btn btn-primary">Send</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="Bootstrap/js/custom.js"></script>







</body>




</html>