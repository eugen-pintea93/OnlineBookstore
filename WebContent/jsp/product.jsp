<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="product.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Contact Form tutorial from BootstrapBay.com">
    <meta name="author" content="BootstrapBay.com">
    <title>BootstrapBay Tutorial</title>
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" type='text/css'>
    <link href="../Bootstrap/css/custom.css" rel="stylesheet" type='text/css'>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" >
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
  </head>
  <body>
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
          <a class="navbar-brand" href="index.html">BootstrapBay</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class><a href="index.html">Home</a></li>       
            <li><a href="#about">About</a></li>
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
    
    <% Product p1 = (Product)session.getAttribute("book"); %>
    
<div class="container">
        <div class="page-header">
            <h1><%=p1.getName()%></h1>
        </div>
        <div class="col-sm-8">
            <div class="thumbnail">
                <img src="<%=p1.getMainImage() %>">
                <div class="caption text-center">
                    <a href="#" class="btn btn-primary" role="button">Live Preview</a>
                </div>
            </div>
   <p>Priced at </p><h5><%=p1.getPrice() %>$</h5> 

   <br>        

<h2>Summary of the book</h2>

<article>
<%=p1.getDescription() %>
</article>

<br><br>

           <video src="../Bootstrap/video/<%=p1.getVideo() %>" autoplay muted width="700px"></video>
            
    </div>
    <div class="col-sm-4">
            <div class="thumbnail bg-grey text-center">
                <h2>Only <%=p1.getPrice() %>$</h2>
                
                
                
                <form action="${pageContext.request.contextPath}/addToCart">
                	<input type="hidden" name="productId" value=<%=p1.getProductId() %>>
                	<input type="submit" class="btn btn-success"><br>
                	
                </form>
                <!-- <a href="jsp/productsInCart.jsp" class="btn btn-success" role="button" >Add to cart</a> -->
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Details</h3>
            </div>
            <div class="panel-body bg-grey text-center">
                <img src="<%=p1.getSideImage() %>">
                <h4><%=p1.getName() %></h4>
            </div>
            <div class="panel panel-default">
                <h3 class="panel-title">Details</h3>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <td>Author</td>
                        <td><%=p1.getAuthor() %></td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td><%=p1.getCountry() %></td>
                    </tr>
                    <tr>
                        <td>Language</td>
                        <td><%=p1.getLanguage() %></td>
                    </tr>
                    <tr>
                        <td>Genre</td>
                        <td><%=p1.getGenre() %></td>
                    </tr>

                </tbody>    
            </table>
    </div>
</div>
</div>


            
    <!-- Fixed footer -->
    <div class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        <div class="container">
            <div class="navbar-text pull-left">
                <p>© 2014 BootstrapBay.</p>
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
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>