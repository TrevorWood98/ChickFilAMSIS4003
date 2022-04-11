<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventSignUp.aspx.cs" Inherits="ChickFilAMSIS4003.EventSignUp" %>

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
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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


            <div class="row  text-center fontforheading">
                <div class="col-sm-12 background">
                    <h2>Book Your Event</h2>
                    <p>Fill out required fields below to book your event</p>
                </div>
            </div>


            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelFirstName" runat="server" Text="First Name" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxFirstName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="textboxFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelLastName" runat="server" Text="Last Name" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxLastName" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="textboxLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelEmail" runat="server" Text="E-Mail Address" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxEmail" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please Enter Email Address" ControlToValidate="textboxEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Valid Email Address" ControlToValidate="textboxEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>


            <%-- Event Date --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelDate" runat="server" Text="Event Date (MM/DD/YYYY)" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxDate" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Please Enter Event Date" ControlToValidate="textboxDate" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDate" runat="server" ErrorMessage="Enter Valid  Date e.g. (MM/DD/YYYY)" ControlToValidate="textboxDate" ForeColor="Red" ValidationExpression="\d{1,2}/\d{1,2}/\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>

                </div>
            </div>



            <%-- Event Time --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelTime" runat="server" Text="Event Time" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxTime" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">

                    <asp:RequiredFieldValidator ID="rfvTime" runat="server" ErrorMessage="Please Enter Event Time" ControlToValidate="textboxTime" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revTime" runat="server" ErrorMessage="Enter Valid Time e.g.(00:00)" ControlToValidate="textboxTime" ForeColor="Red" ValidationExpression="^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$" Display="Dynamic"></asp:RegularExpressionValidator>

                </div>
            </div>




            <%-- Guest Count --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelCount" runat="server" Text="Guest Count" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxCount" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvCount" runat="server" ErrorMessage="Please Enter Number of Guest" ControlToValidate="textboxCount" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rfCount" runat="server" ErrorMessage="Enter Guests Between 10-150" ControlToValidate="textboxCount" Display="Dynamic" ForeColor="Red" MaximumValue="150" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                </div>
            </div>


            <%-- Address 1 --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelAddress1" runat="server" Text="Event Address" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxAddress1" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" ErrorMessage="Please Enter Event Address" ControlToValidate="textboxAddress1" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>



            <%-- Address 2 --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelAddress2" runat="server" Text="Address 2 (Optional)" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxAddress2" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                </div>
            </div>



            <%-- City --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelCity" runat="server" Text="City" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxCity" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please Enter City" ControlToValidate="textboxCity" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>



            <%-- State Drop-Down --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelState" runat="server" Text="State" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Chick-Fil-A Class ProjectConnectionString %>" SelectCommand="spSelectAllStates" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please Enter State" ControlToValidate="ddlState" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>


            <%-- Zipcode --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelZip" runat="server" Text="Zipcode" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxZip" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>

                </div>
                <div class="col-sm-3 background">
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Please Enter Zip Code" ControlToValidate="textboxZip" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="Enter Valid Zip Code" ControlToValidate="textboxZip" Display="Dynamic" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </div>
            </div>


            <%-- Event Details --%>
            <div class="row ">
                <div class="col-sm-6 background rightalignlabel">
                    <asp:Label ID="labelDetails" runat="server" Text="Event Details (Optional)" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-sm-3 background text-left">
                    <asp:TextBox ID="textboxDetails" runat="server" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                </div>
            </div>



            <div class="row">
                    <div class="col-sm-12 background text-center">
                        <br />
                        <br />
                        <%-- Submit Button for Event --%>
                        <asp:Button CssClass="btn-round btn-round--red" ID="buttonSubmit" runat="server" Text="Submit" OnClick="buttonSubmit_Click" />
                    </div>
            </div>



             <div class="footer-modules wrapper">
                <nav class="footer-nav" aria-label="footer">
                    <ul class aria-label>
                        <li>
                            <a href="https://www.chick-fil-a.com/nutrition-allergens" title="Click here to view Chick-fil-A's Nutrition and Allergens information">Nutrition &amp; Allergens</a>
                        </li>
                        <li>
                            <a href="ContactUs.aspx">Contact us</a>
                        </li>
                        <li>
                            <a href="https://www.cfaapparel.com/">Merchandise</a>
                        </li>
                    </ul>
                </nav>
                <div class="social">
                    <ul class="social-icons" aria-label="">
                        <li>
                            <a href="https://www.facebook.com/CFAStillwater/" class="icon-facebook-over fa fa-facebook" rel="noopener noreferrer" target="_blank">
                                <span>Facebook</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/explore/locations/11142001/united-states/stillwater-oklahoma/chick-fil-a-stillwater/?hl=en" class="icon-instagram-over fa fa-instagram" rel="noopener noreferrer" target="_blank"><span>Instagram</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://twitter.com/ChickfilA" class="icon-twitter-over fa fa-twitter" rel="noopener noreferrer" target="_blank"><span>Twitter</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>





        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
