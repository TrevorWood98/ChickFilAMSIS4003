<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="ChickFilAMSIS4003.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/CFACSS.css" rel="stylesheet" type="text/css">
    <link href="Content/ChickFilACSS.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../Images/CFAIcon.png" />
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
                            <img style="padding-top: 30px" src="../Images/CFAMenu.svg" width="25" class="img-fluid mx-auto d-block imgzindex" />
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
                    <ul class="flex" style="background-color: #ffffff">
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

            <div class="row">
                <div class="col-sm-12">
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h4 class="calenderheading text-center fontforheading">Where Are We Now?</h4>
                </div>
            </div>

            <div class="row border-danger text-center">

                <div class="col-sm-12 justify-content-center fontforcalendar  ">

                    <h4 class="justify-content-center">
                        <a class="btn-round btn-round--red" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Calendar
                        </a>

                    </h4>

                    <div class="collapse" id="collapseExample">
                        <div class="card card-body">


                            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FCF9F4" BorderColor="White" ForeColor="Red" OnSelectionChanged="Calendar1_SelectionChanged"  OnDayRender="Calendar1_DayRender" Width="651px" BorderStyle="Solid"></asp:Calendar>
                            <asp:Label ID="lblCalendar" runat="server" ForeColor="Red"></asp:Label>

                        </div>
                    </div>

                </div>




            </div>

            <div class="row background">
                <div class="col-sm-12">
                    <br />
                    <br />
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6 aboutusborder justify-content-center">
                    <div class="col-sm-1">
                    </div>
                    <div class="col-sm-10 embed-responsive embed-responsive-4by3 mapmargin">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d12890.954969560871!2d-97.06848176498904!3d36.1242221814922!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1schick%20fil%20a%20stillwater%20google%20maps!5e0!3m2!1sen!2sus!4v1617161717108!5m2!1sen!2sus"></iframe>

                    </div>
                    <div class="col-sm-1">
                    </div>
                </div>
                <div class="col-sm-6  text-center fontforinfo  border-danger ">
                    <div class="col-sm-12 text-center infoborder ">
                        <p class="text-center homeeventpara">Chick-Fil-A Stillwater</p>
                        <h4 class="justify-content-center text-center">600 E Hall of Fame Ave.</h4>
                        <h4 class="justify-content-center text-center">Stillwater, Oklahoma 74074</h4>

                        <p class="text-center homeeventpara">
                            Call Us:</h4>
                        <h4 class="justify-content-center text-center">
                            (405) 742-2111
                        </p>

                    </div>

                </div>


            </div>

            <div class="row">
                <div class="col-sm-12">
                    <br />
                </div>


            </div>

            <div class="row signup justify-content-center">
                <div class="col-sm-1">
                </div>
                <div class="col-sm-10 justify-content-center signupheading">
                    <br />
                    <div class="imgwrap text-center">
                        <img src="https://d1fd34dzzl09j.cloudfront.net/Images/CFACOM/Home%20Page%20Refresh/Cling-06_red.png?h=125&w=125&la=en" class=" mobile-img" alt="CFA Phone Icon" />
                    </div>
                    <br />
                    <br />
                    <h4 class="text-center homeeventheading">Place Your Next Event?</h4>


                    <p class="text-center homeeventpara">Go ahead and book an event with us today!</p>
                    <h4 class="justify-content-center text-center">
                        <a class="btn-round btn-round--red" href="EventSignUp.aspx" role="button" aria-expanded="false">Book Event</a>
                    </h4>
                    <br />
                    <br />
                    <br />
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


    <script>
        $(document).on('click', function () {
            $('.collapse').collapse('hide');
        })

    </script>
    <script>

    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
