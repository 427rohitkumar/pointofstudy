

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="css/lecture_ui.css" rel="stylesheet" type="text/css"/>
    <title>Document</title>
</head>
<body>
    
    <div class="container-fluid main-container" >
        <div class="row main-row">

            <!-- lrft menu  -->
            <div class="col-lg-2" id="left-menu">

                <div class="container mt-3" style="border: 1px solid rgba(255, 255, 255, 0.481);">
                    <div class="row">

                        <img src="image/title.png" alt="" width="100px" height="70px" class="m-auto">
                    </div>
                </div>
                <div class="row mt-3">
                    <h5 class="m-auto" style="color: white;">Physics Class 10th</h5>
                </div>
                <hr width="50%" color="white">
                 
                <!-- subject list  -->
                <div class="container mt-5" id="courselist-main-div">
                    <div class="row mt-3 courselist">

                         <div class="text-center list-div" style="width: 100%;" ><p id="list-title">Chapter 1</p></div>

                         <div style="width: 100%;" id="list">
                            <p class="text-center" id="content">Video Lecture</p>
                            <hr>
                            <p class="text-center">Solid liquid and Gas</p>
                            <p class="text-center">Solid liquid and Gas</p>
                            <p class="text-center">Solid liquid and Gas</p>
                            <p class="text-center">Solid liquid and Gas</p>
                         </div>
                         

                    </div>

                    <div class="row courselist">
                        <div class="col text-center"><p>Chapter 2</p></div>
                   </div>

                   <div class="row mt-2 courselist">
                    <div class="col text-center"><p>Chapter 3</p></div>
                   </div>

                   <div class="row mt-2 courselist">
                    <div class="col text-center"><p>Chapter 4</p></div>
                   </div>

                </div>
                <!-- subject list end  -->
            </div>
            <!-- left menu end  -->


            <!-- div col right content  -->
            <div class="col-lg-10" id="right-main-coldiv">

                 <div class="container mt-5" id="main-default-con" >
                    <div class="row">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="margin: auto;">
                            <div class="carousel-inner">
                              <div class="carousel-item active">
                                <img class="d-block w-100" src="image/physics.jpg" alt="First slide" style="height: 550px; width: 600px;">
                              </div>
                              <div class="carousel-item">
                                <img class="d-block w-100" src="image/chemistry.png" alt="Second slide" style="height: 550px; width: 600px;" >
                              </div>
                              <div class="carousel-item">
                                <img class="d-block w-100" src="image/english.jpg" alt="Third slide" style="height: 550px; width: 600px;">
                              </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                            </a>
                        </div>      
                    </div>


                    <div class="container mt-5">
                        <div class="row">
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita vero eaque aperiam assumenda rerum sapiente exercitationem officiis, ducimus esse quis est pariatur accusamus? Sint consectetur id obcaecati at nemo blanditiis unde minus tenetur! Qui sed officiis asperiores ducimus excepturi, exercitationem dolorum repellat ab maiores debitis, saepe mollitia facilis eius vitae nemo explicabo rerum labore, magnam reprehenderit quam? Omnis animi architecto incidunt magni sunt alias neque quos nostrum corrupti harum. Alias, fuga sequi maxime error, velit tenetur pariatur laboriosam fugiat magni repellat incidunt similique cumque et quam, saepe numquam? Nulla vitae dolorum sit incidunt totam iste cum vel officia rem eos!  Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis assumenda voluptatum, beatae, alias fuga reprehenderit, obcaecati iure nesciunt illo maiores molestias magni aspernatur nobis tenetur delectus animi vitae quos molestiae illum odit mollitia necessitatibus repellat voluptatibus libero? Beatae ipsa odit alias totam quidem blanditiis, asperiores facere enim deleniti aliquam vero veniam voluptatum. Eius eveniet cupiditate id ipsum voluptas nulla illum ea officia sequi, dolorem quae accusantium quia impedit odit et iste ducimus. Aliquam, architecto sequi velit molestiae quasi consequuntur, nobis et inventore aliquid obcaecati molestias! Impedit assumenda, excepturi et nesciunt voluptates odit? Dicta minus ullam voluptate adipisci veritatis optio atque.</p>
                        </div>
                     </div>
                 </div>

                <div class="container mt-5" id="video-con">
                    <div class="row">
                        <video src="image/vv.mkv" width="1000px"  class="m-auto" controls></video>
                    </div>
                </div>
               
            </div>
            <!-- div col right content end  -->

        </div>
    </div>

    <!-- java script  -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/lecture_ui.js" type="text/javascript"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="startUI.js"></script>
</body>
</html>
