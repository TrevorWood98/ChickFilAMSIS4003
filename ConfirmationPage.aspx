<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="ChickFilAMSIS4003.ConfirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/ChickFilACSS.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Dela+Gothic+One&display=swap');
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="sticky-top">
                <%-- Navigation Bar --%>
                <nav class="navbar navbar-expand-sm navtext navbarcolor navbar-light justify-content-center">
                    <ul class="flex" style="background-color:#ffffff">
                        <li class="nav-item">
                            <a class="nav-link navtext" href="HomePage.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link navtext" href="https://www.chick-fil-a.com/menu">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="ContactUs.aspx">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="EventSignUp.aspx">Book Event</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="OnlineShopping.aspx">Online Order</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="LoginPage.aspx">Login</a>
                        </li>

                    </ul>

                </nav>
            </div>

             <div class="row  text-center fontforheading">
                <div class="col-sm-12 background">
                    <h2>Thank You for booking your next event with us!</h2>
                    <p>A team member will review the event details and reach out to you soon.</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
