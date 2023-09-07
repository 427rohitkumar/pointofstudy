
<%@page import="com.pointofstudy.dao.VideoDao" %>
<%@page import="java.util.*" %> 
<%@page import="com.pointofstudy.entities.AllClasses" %> 
<%@page import="com.pointofstudy.entities.AllSubjects" %> 
<%@page import="com.pointofstudy.helper.Myconnection" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            .theme{
                background-color:#F1C40F;
            }

            .logo{
                color: black;
                text-decoration: none;
                margin-left: 5px;
                margin-right: 25px;
                font-size: 25px;
                font-weight: 400;
            }

            .active{
                background: #70706c48;
            }



            #rightnav ul{
                float: right;
                margin-right: 15px;
                padding: 0px;
            }
            #rightnav ul li{
                list-style: none;
                display: inline-block;
                margin-top: 10px;

            }

            #rightnav ul li a{
                text-decoration: none;
                margin-top: 20px;
                padding: 3px 20px;
                font-size: 17px;
                color: black;


            }


            #bar{
                float: right;
                font-size: 20px;
                display: none;
                padding: 10px;
            }
            
            #showData{
                display: none;
            }
            
            #spinner{
                display: none;
            }

            @media(max-width:994px){
                #rightnav{
                    background:#D6DBDF;
                    height:95vh;
                    display: none;
                }

                #bar{
                    display: block;
                }

                .logo{
                    font-size: 30px;

                }

                #leftmenu{
                    height: 60px;
                }
                #rightnav ul{
                    float: none;
                    margin-top: 30px;
                }
                #rightnav ul li{
                    display:block;
                    margin-top: 25px;
                    text-align: center;
                    /* border: 1px solid ; */
                }

                #rightnav ul li:hover{
                    background:#70706c48 ;
                }

                #rightnav ul li a{
                    text-align: center;
                    font-size: 30px;
                }
            }
        </style>

        <title>Document</title>
    </head>
    <body>

        <div class="container-fluid theme" >
            <div class="row">
                <nav class="col-lg-3" id="leftmenu">

                    <a href="#!" class="logo"><i class="fa-solid fa-house-laptop fa-beat-fade"></i>&nbsp;&nbsp;MomentGyan</a>

                    <div id="bar"><i class="fa-solid fa-bars"></i></div>

                </nav>
                <nav class="col-lg"  id="rightnav">

                    <ul>
                        <li class="active">
                            <a href="#" ><i class="fa-solid fa-house"></i>&nbsp;&nbsp;Home</a>
                        </li>

                        <li>
                            <a href="#"><i class="fa-solid fa-circle-user"></i>&nbsp;&nbsp;Profile</a>
                        </li>

                        <li>
                            <a href="#"><i class="fa-solid fa-right-from-bracket fa-rotate-270"></i>&nbsp;&nbsp;Logout</a>
                        </li>

                    </ul>

                </nav>
            </div>
        </div>


        <div class="container">
            <div class="row">
                <!-- left toggle  -->
                <div class="col-md-3">
                    <div class="container">
                        <div class="row mt-5">
                            <div class="list-group">
                                <button type="button" class="list-group-item list-group-item-action" id="video-post"><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;Post Video Lecture</button>
                                <button type="button" class="list-group-item list-group-item-action" id="quiz"><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;Create Quiz</button>
                                <button type="button" class="list-group-item list-group-item-action"><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;Post Pdf Content</button>
                                <button type="button" class="list-group-item list-group-item-action"><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;Notice</button>
                            </div>
                        </div>

                    </div>
                </div>
                
                <!--right main containten--> 
                <div class="col-md">
                    <div class="container" id="showData">
                            
                        <div class="row text-center" id="spinner">
                            <i class="fa-solid fa-rotate-right fa-spin fa-4x mt-4"></i>
                            <h5>Loading..</h5>
                        </div>
                        
                        <div class="row mt-3">
                            <div class="card">
                                <div class="card-title text-center">Video Post</div>
                                <hr>
                                <form id="VideoPost" action="VideoPostServlet" method="POST">


                                    <div class="form-group mt-2">
                                        <select name="classId" id="" class="form-control">

                                            <option value="9th" selected disabled>---Select Class--</option>
                                            <% 
                                     VideoDao vd=new VideoDao(Myconnection.connect());
                                     ArrayList<AllClasses> cList=vd.getAllClasses();
              
                                      for(AllClasses c:cList)
               
                                      {
               
                                            %>

                                            <option value="<%=c.getClass_id()%>"><%=c.getClasses()%></option>



                                            <%
                                               }
                
                                            %>
                                        </select>
                                    </div>



                                    <div class="form-group mt-2">

                                        <select name="subjectId" id="" class="form-control">

                                            <option value="0" selected disabled>---Select Subject--</option>

                                            <% 
                                          ArrayList<AllSubjects> sList=vd.getAllSubject();
              
                                           for(AllSubjects s:sList)
               
                                           {
               
                                            %>
                                            <option value="<%=s.getSubject_id()%>"><%=s.getSubject()%></option>
                                            <%
                                                }
                
                                            %>
                                        </select>
                                    </div>
                                    <div class="form-group mt-2">
                                        <input name="video_title" type="text" placeholder="Enter Video Title" class="form-control">
                                    </div>

                                    <div class="form-group mt-2">
                                        <textarea name="video_description" type="text" placeholder="Enter Video description maximum 50 word" class="form-control" style="height: 200px;"></textarea>
                                    </div>

                                    <div class="form-group mt-2" style="border: 1px solid rgba(128, 128, 128, 0.262);border-radius: 5px;">
                                        <label  for="image" class="m-1">Select thumbnail of video</label><br>
                                        <input type="file" class="m-1" name="thumbnail_img">
                                    </div>

                                    <div class="form-group mt-2" style="border: 1px solid rgba(128, 128, 128, 0.262);border-radius: 5px;">
                                        <label  for="video" class="m-1">Select Your video content</label><br>
                                        <input type="file" class="m-1" name="video">
                                    </div>

                                    <div class="form-group mt-4" >
                                        <input id="loading" type="submit" style="width: 200px; height: 40px;float: right;" >
                                    </div>


                                </form>
                                <hr>
                            </div>
                        </div>






                    </div>
                </div>
            </div>
        </div>



        <!-- java script  -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script>
                                    $(document).ready(function () {
                                        $("#bar").on('click', function () {
                                            $("#rightnav").toggle();
                                        });
                                        
                                            $("#video-post").on('click',function(){
                                                $("#showData").toggle();
                                                
                                            

                                            });
                                              
                                            
                                            });
                                            
                                        
                                    
                                    
        </script>



        <!--admin page script for sendig form data to servlet--> 

        <script>
            $(document).ready(function () {
                $("#VideoPost").on('submit', function (event) {
                    event.preventDefault();
                    console.log("you click on submit buttton");
                    
                     
                     $("#spinner").show();
                      
                    let form = new FormData(this);

//                    now requesting to server 

                      $.ajax({
  
                          url: "VideoPostServlet",
                          type: "POST",
                          data: form,
  
                          success: function (data, textStatus, jqXHR) {
                              console.log(data);
  
                              if (data.trim() === 'done') {
                                  
                                   
                                 $("#spinner").hide();
                                    
                                  Swal.fire({
                                      icon: 'success',
                                      title: 'Success',
                                      text: 'Your Video Post are saved Successfull'
  
                                  });
                              } else {
                                   $("#spinner").hide();

                                  Swal.fire({
                                      icon: 'error',
                                      title: 'Oops...',
                                      text: 'Something went wrong!'+data 
  
                                  });
  
                              }
  
                          },
                          error: function (jqXHR, textStatus, errorThrown) {
                              //error message
                            $("#spinner").hide();

                              Swal.fire({
                                  icon: 'error',
                                  title: 'Oops...',
                                  text: 'Something went wrong!'+data
  
                              });
                          },
  
                          processData: false,
                          contentType: false
 
                      });
                });
            });

        </script>

    </body>
</html>