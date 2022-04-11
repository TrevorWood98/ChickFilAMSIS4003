<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ChickFilAMSIS4003.Login_Page" %>

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
                    <ul class="flex" style="background-color:#ffffff">
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

            <div class="row fontforheading">

                <div class="col-sm-12">
                    <h3>Login</h3>
                </div>
            </div>


            <%-- Row for Username --%>
            <div class="row fontforheading">
                <div class="col-sm-3 offset-sm-3 text-left rightalignlabel">
                    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                </div>

                <div class="col-sm-3">
                    <asp:TextBox ID="tboxUsername" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Please Enter a Valid Username" ControlToValidate="tboxUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>


              <%-- Row for Password --%>
            <div class="row fontforheading">
                <div class="col-sm-3 offset-sm-3 text-left rightalignlabel">
                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </div>

                <div class="col-sm-3">
                    <asp:TextBox ID="tboxPassword" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please Enter a Password" ControlToValidate="tboxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
            </div>


            <%-- Submit Button --%>
            <div class="row">
                <div class="col-sm-6 offset-sm-6">
                    <asp:Button ID="buttonSubmitbtn" runat="server" Text="Submit" OnClick="buttonSubmitbtn_Click" />
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">

                </div>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
