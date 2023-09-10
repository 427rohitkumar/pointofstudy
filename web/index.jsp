
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Point of study</title>
  <link rel="icon" href="image/title.png" type="image">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="css/index.css">
  
 
  
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="image/title.png " alt="#"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp" >Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addmission.jsp">Addmission</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>

                </ul>

                <div class="admin_login">
                    <button id="admin" onclick="popup('admin-popup')">Admin Login</button>
                </div>
            </div>
        </div>



        <!-- student popup  -->

        <div class="main-popup" id="login-popup">
            <div class="sub-main">
                <button id="cros" onclick="exit()"><i class="fa-solid fa-xmark"></i></button>
                <div class="login-tex" id="logintex"><h3 class="text">Login</h3></div>



                <form action="LoginServlet"  method="post" class="form">


                    <label for="email">Email</label>
                    <input type="text" class="input" name="email"><br><br>

                    <label for="password">Password</label><br>
                    <input type="password" class="input" name="password"><br><br>

                    <input type="submit" value="Login" class="btn"><br>
                    <div class="forget">
                        <a href="#" style="text-align: center;">Forget Password</a>
                    </div>
                </form>
            </div>

        </div>

    </nav>
  
  <div class="main-container">
    <div class="icon">
      <img src="image/Book lover-bro.png" alt="#">
    </div>
   
    <div class="lines">
      <span style="color: rgb(0,0,0);font-size:40px;font-family:Monospace">
        <strong>Want to</strong>
      </span>
      <span style="color: rgb(102,116,204);font-size:60px">
        <strong>learn..!</strong>
      </span>
      <div class="login">
        <button class="butt" id="butt_login" onclick="login()" >Login</button>
      </div>
      <div class="login">
        <button class="butt" id="butt_addmission" onclick="addmission()">Addmission</button>
      </div>
     
    </div>
      
      
      
    <div class="lower">
      <div class="main-heading">
        <span style="color: rgb(0,0,0);font-size:40px;font-family:Monospace">
        <strong>Guiding You At Every</strong>
      </span>
      <span style="color: orange;font-size:120px">
        <strong>Step!</strong>
      </span>
      </div>
         <div class="descript-line">
               <p>Our Top Mentors show you the way, <br/>
              to becoming a thorough professional!</p>
          </div>
      <div class="main-box">
        <div class="box1">
          <img src="image/box_img.png" alt="#">
          <div class="pg1">
            <h4><b>Master classes</b></h4>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. quo quam tempora nam harum suscipit esse.</p>
            
          </div>
        </div>
        <div class="box1">
          <img src="image/box_img.png" alt="#">
          <div class="pg1">
            <h4><b>doubt classes</b></h4>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. quo quam tempora nam harum suscipit esse.</p>
          </div>
        </div>
        <div class="box1">
          <img src="image/box_img.png" alt="#">
          <div class="pg1">
            <h4><b>doubt classes</b></h4>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. quo quam tempora nam harum suscipit esse.</p>
          </div>
        </div>
        <div class="box1">
          <img src="image/box_img.png" alt="#">
          <div class="pg1">
            <h4><b>Quizzes and Tests</b></h4>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. quo quam tempora nam harum suscipit esse.</p>
            
          </div>
        </div>
      </div>
      
      
      <div class="analise"> 
        
        <div class="section1">
          <h3>POINT OF STUDY</h3>
          <SPan>OUR STUDENTS LOVE US </SPan>
        </div>
        <div class="section1">
          <P>EXPLANATION IS TOO GOOD. LOVE YOUR WAY OF TEACHING ❣️ <br> <br> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae facere temporibus iusto nobis eligendi facilis</P>
        </div>
        <div class="section1">
          <P>EXCELLENT COURSE! EVERY SMALL DETAIL IS EXPLAINED SO CLEARLY TO THE POINT...VERY INTERESTING ...BEST TEACHER ...AFTER MONTHS OF CONFUSION THINGS ARE NOW STARTING TO MAKE SENSE AFTER WATCHING THESE (LECTURES)....LOT OF THANKS TO APNA COLLEGE TEAM</P>
        </div>
        <div class="section1">
          <P>I just wanna to say that I just completed the level 1 of this course and I am feeling very confident. I always wanted to learn CODING and you make it so easy to understand. So cool, just continue what you are doing and Thank you this course.</P>
        </div>
      </div>
      
      <div class="footer-line">
        <p>@copyright point of study</p>
      </div>
    </div>
  </div>

  <div class="popup_main">
    
  </div>


  
   <script>
    function addmission(){
      window.location.href="addmission.jsp";
      
    }
    
    
    
    const log=document.getElementById("login-popup").style;
    function login(){
      window.location.href="login.jsp";
        
    }
      

      function exit(){

        log.display="none";
      }

    
    
    
    
   


   
  </script>

</body>

</html>
    
