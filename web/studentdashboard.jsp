
<%@page import="com.pointofstudy.entities.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>


<%
User user=(User)session.getAttribute("currentUser");
if(user==null){
     response.sendRedirect("index.jsp");
    }

%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/studentdashboard.css" rel="stylesheet" type="text/css"/>


        <title>Document</title>
    </head>
    <body>

        <div class="container-fluid main-fluid" >
            <div class="row">

                <!-- left menu start here -->
                <div class="col-lg-2" id="left-menu">

                    <div class="row">
                        <span id="cross">
                            <i class="fa-solid fa-xmark"></i>
                        </span>
                    </div>

                    <div class="container" id="imgContainer">
                        <div class="row">
                            <div id="frame">
                                <img src="image/defaultprofile.jpg" alt=""  width="150px" height="150px" style="object-fit: cover;">
                            </div>
                        </div>
                        <hr color="gray">
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <h5 style="text-align: center;color: white;"><%=user.getStudName()%></h5>
                            </div>
                        </div><br>

                        <div class="container m-0 p-0">
                            <div class="row side-menu ">
                                <ul>
                                    <li>
                                        <a href="#" style="background: white; color: #10558d;">
                                            <i class="fa-solid fa-book"></i>&nbsp;&nbsp;
                                            <span>Study Zone</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-bell"></i
                                            >&nbsp;&nbsp;&nbsp;&nbsp;<span>Notice</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-book-open"></i>&nbsp;&nbsp;
                                            <span>Syllabus</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa-solid fa-question"></i>&nbsp;&nbsp;&nbsp;
                                            <span>Test-Series</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fas fa-tachometer-alt"></i>&nbsp;&nbsp;
                                            <span>Performance</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fas fa-chart-line"></i>&nbsp;&nbsp;
                                            <span>Report</span>
                                        </a>
                                    </li>

                                    <li class="profile_logout">
                                        <a href="#" id="profile-phone-view">
                                            <span ><i class="fa-solid fa-circle-user"></i>&nbsp;&nbsp;
                                                Profile
                                            </span>
                                        </a>
                                    </li>

                                    <li class="profile_logout">
                                        <a href="#">
                                            <span ><i class="fa-solid fa-square-caret-up"></i>&nbsp;&nbsp;
                                                Logout
                                            </span>
                                        </a>
                                    </li>

                                    <!--                                   
                                                                        </div>-->
                                </ul>
                            </div>
                        </div>

                    </div>
                    <!--profile main container end-->

                </div>
                <!-- left menu end here -->

                <!-- main second main col content-div start here -->
                <div class="col" id="content-div">

                    <!-- top menu start -->
                    <div class="row top-menu">
                        <span id="leftArrow" class="col-2"><i class="fa-solid fa-bars-staggered"></i>
                        </span>

                        <div class="profilemenu-main col">
                            <div class="porfileItem">
                                <span id="logout-profile">
                                    <a href="LogoutServlet" style="color: white;text-decoration: none">
                                    <i class="fa-solid fa-square-caret-up"></i>&nbsp;&nbsp;Logout
                                    </a>
                                </span>



                                <span id="profile"><i class="fa-solid fa-circle-user"></i>
                                    &nbsp;Profile
                                </span>
                            </div>
                        </div>



                    </div>
                    <!-- top menu end  -->

                    <!-- main content row -->
                    <div class="row main-row">

                        <!-- Study Zone starting -->

                        <div class="container mt-5 " id="videoCard-main-div">
                            <div class="row">
                                <div class="card col-md-4" >
                                    <img class="card-img-top" src="image/physics.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">Physics Besic To Advance</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="lecture_ui.jsp" class="btn btn-primary">Start To Learn</a>
                                    </div>
                                </div>


                                <div class="card col-md-4" >
                                    <img class="card-img-top" src="image/math.png" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">Math Class 10th</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Start To Learn</a>
                                    </div>
                                </div>


                                <div class="card col-md-4" >
                                    <img class="card-img-top" src="image/chemistry.png" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">Chemistry class 10</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Start To Learn</a>
                                    </div>
                                </div>





                            </div>



                            <div class="row mt-5 mb-5">
                                <div class="card col-md-4">
                                    <img class="card-img-top" src="image/hindi.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">Hindi class 10th</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Start To Learn</a>
                                    </div>
                                </div>


                                <div class="card col-md-4" >
                                    <img class="card-img-top" src="image/history.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">History class 10th</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Start To Learn</a>
                                    </div>
                                </div>


                                <div class="card col-md-4" >
                                    <img class="card-img-top" src="image/english.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title">English Class 10th</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Start To Learn</a>
                                    </div>
                                </div>





                            </div>
                        </div>





                        <!-- Study Zone Ending -->














                        <!-- profile starting -->
                        <div class="container-fluid p-3" id="container">
                            <span id="xmark"><i class="fa-solid fa-xmark"></i></span>
                            <div class="row mt-3" id="row">
<!--                                <div class="col-md-4" id="col-1">

                                    <img src="image/defaultprofile.jpg" class="img-thumbnail img-profile my-3"
                                         alt="...">


                                </div>-->

                                <div class="col-md-9 m-auto" id="col-2" >
                                    <div class="card my-3 profile-card " style=" box-shadow: 1px 2px 10px gray;" >
                                        <div class="card-body profile-card-body">
                                            <h5 class="card-title">
                                                <h1>Profile Details..</h1>
                                            </h5>
                                            <h6 class="card-subtitle mb-2 text-body-secondary ml-2">--------</h6>


                                            <!-- table body start -->
                                            <table class="table profile-table">
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">Name</th>
                                                        <td>
                                                            <%=user.getStudName()%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Father's Name</th>
                                                        <td>
                                                            <%=user.getStudF_Name()%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Father's Phone number</th>
                                                        <td>
                                                            <%=user.getStudF_Contact()%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th scope="row">Student's Phone number</th>
                                                        <td>
                                                            <%=user.getStudContact()%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th scope="row">Email</th>
                                                        <td>
                                                            <%=user.getStudEmail()%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th scope="row">Gender</th>
                                                        <td>
                                                            <%=user.getStudGender()%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th scope="row">Class</th>
                                                        <td>
                                                            <%=user.getStudClass()%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th scope="row">Address</th>
                                                        <td>
                                                            <%=user.getStudAddress()%>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <th scope="row">Registration Date</th>
                                                        <td>
                                                            <%=user.getStud_Reg_Date()%>
                                                        </td>

                                                    </tr>


                                                </tbody>
                                            </table>
                                            <!-- end of table body  -->

                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- main content row  end-->

                            <!-- main second main col content-div end here -->
                        </div>
                        <!-- profile endign -->


                    </div>
                    <!-- main content row  end-->

                </div>
                <!-- main second main col content-div end here -->
            </div>
        </div>

        <!-- javaScript here -->

        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/studentdashboard.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>
</html>
