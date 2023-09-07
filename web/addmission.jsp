

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Addmission</title>
  <link rel="icon" href="images/title.jpg" type="image">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
 
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/addmission.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="image/title.png" alt="#"></a>
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
            <a class="nav-link" href="addmission.jsp" >Addmission</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="notice.jsp" >Notice</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp" >About</a>
          </li>

        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

  <div class="form">
    <form id="reg-form"  action="RegisterServlet" method="POST">
      <div class="container">
        <h1>Register</h1>
        <p>Please fill in this form for your Addmission.</p>
        <hr>

        <label for="name"><b>Student Name</b></label>
        <input type="text" placeholder="Enter your name" name="name" id="sname" onblur="myFunction()" required>

        <label for="name"><b>Father's Name</b></label>
        <input type="text" placeholder="Enter your father's name" name="fname" id="fname" onblur="myFunction()"required>

        <label for="contact"><b>Father's phone no.</b></label>
        <input type="text" placeholder="Enter your father phone no." name="fcontact" id="fcontact" required>

        <label for="contact"><b>Student phone no.</b></label>
        <input type="text" placeholder="Enter your phone no." name="scontact" id="scontact" required>

        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" id="email" required>
        
        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" id="password" required>
        
         <label for="c-password"><b>Confirm Password</b></label>
        <input type="password" placeholder="Confirm Password" name="c-pass" id="cpassword" required>
    
        <label for="name"><b>Village/Town</b></label>
        <input type="text" placeholder="Enter your Village/town" name="address" id="address" onblur="myFunction()" required>

        <input type="radio" name="gender" value="male"> Male
        <input type="radio" name="gender" value="female"> Female
        <input type="radio" name="gender" value="others"> Others
        
        <div class="custom-select">
          <select name=class>
            <option value="0">Select your class</option>
            <option value=""8>8<sup>th</sup></option>
            <option value="9">9<sup>th</sup></option>
            <option value="10">10<sup>th</sup></option>
            <option value="11">11<sup>th</sup></option>
            <option value="12">12<sup>th</sup></option>
          </select>
        </div>
    
        <p>By Taking Addmission you agree to our <a href="#">Terms & Privacy</a>.</p>
        <button id="reg-btn" type="submit" class="registerbtn" >Register</button>
      </div>
    </form>
  </div>

  <div class="welcome">
    <marquee direction="left" >welcome to point of study students ☺👍</marquee>
  </div>

  

<!--java Script-->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="javascript.js"></script>

<script>
    $(document).ready(function(){
        console.log("Loaded....");
        
        $("#reg-form").on('submit',function(event){
            
           event.preventDefault();
           let form=new FormData(this);
           
            $.ajax({
               url:'RegisterServlet',
               type:'POST',
               data:form,
               success:function(data,textStatus,jqXHR){
                   if(data.trim()==='done'){
                        Swal.fire({
                        title: 'Registration Succesfull ',
                        text: "Press YES For Redirecting login page...",
                        icon: 'success',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                      }).then((result) => {
                        if (result.isConfirmed) {
                            window.location="login.jsp";
                            }
                         });
                   }else{
                       Swal.fire({
                             icon: 'error',
                             title: 'Oops...',
                             text: data
                        }); 
                   }
                 
                },
                
                error:function(jqXHR,textStatus,errorThrown){
                    
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!'
                        
                      });
                },
                
                processData:false,
                contentType:false
            });
       });
    });
    
</script>
</body>

</html>