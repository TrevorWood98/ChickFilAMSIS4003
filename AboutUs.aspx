<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ChickFilAMSIS4003.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/CFACSS.css" rel="stylesheet" type="text/css">
    <link href="Content/ChickFilACSS.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../Images/CFAIcon.png"/>
   <%--  <style>
        @import url('https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap');
    </style>--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>


    <title>Chick fil A Stillwater</title>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container-fluid">

            <%-- JumbroTron with Heading and Logo --%>
            <div class="row">
                <div class="col-sm-12 -fluid stuff">
                    <br />
                    <div class="nav-toggle" data-component="NavToggle">
	                <a data-action="toggle nav" href="Navigation.aspx" class="icon" aria-expanded="false" onclick="myFunction()">
                                <img style="padding-top:30px" src="../Images/CFAMenu.svg" width="25" class="img-fluid mx-auto d-block imgzindex" />	                
	                </a>
                </div>
                    <img src="../Images/CFAIMGHeader.png" width="50" class="img-fluid mx-auto d-block imgzindex" />
                    <br />
                </div>
            </div>
                 

            <div class="sticky-top">
                <%-- Navigation Bar --%>
                <%--<nav class="navbar navbar-expand-sm navtext navbarcolor navbar-light justify-content-center"> --%>
                <nav class="main-nav" role="navigation" aria-label="Main menu">
                    <ul class="flex">
                        <li class="nav-item">
                            <a class="nav-link navtext" href="HomePage.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link navtext" href="https://www.chick-fil-a.com/menu">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link navtext" href="ContactUs.aspx">Contact Us</a>
                        </li>
                        <li class="nav-item navitem-hoverable">
                            <a class="nav-link navtext" href="https://www.chick-fil-a.com/about/who-we-are">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link navtext" href="EventSignUp.aspx">Book Event</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link navtext" href="OnlineShopping.aspx">Online Order</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link navtext" href="LoginPage.aspx">Login</a>
                        </li>
        
                    </ul>

                </nav>
                <nav class="main-nav" role="navigation" aria-label="Main menu" aria-hidden="true" style="display: none;">
					<ul class="flex">
						<div class="order-button-group flex">
                            <a href="/order" class="btn-round btn-round--red">Order food</a>
                            <a href="/orderfood" class="btn-round btn-round--white" target="|Custom" title="Order Catering">Order Catering</a>
						</div>
                    </ul>
                    
                    <div class="order-button-group flex">
                        <a href="/orderfood" class="btn-round btn-round--white" target="|Custom" title="Order Catering">Order Catering</a>

                    </div>
                </nav>

                    <br />
                    <br />
                    <br />
                    <br />

            </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
