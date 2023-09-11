
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.pointofstudy.entities.Message" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="image/title.png" type="image">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <title>Document</title>
    <style>
        




.navbar{
    overflow: hidden;   
    top: 0;
    width: 100%;
    z-index: 1;
    box-shadow: 0 3px 8px 0 rgba(0,0,0,0.2);

    
    
}

.container-fluid img{
    width: 90px;
    height: 45px;

}

.navbar-brand{
    padding-left: 40px;
    font-size: 35px;
    color: rgb(7, 7, 7);
}




#navbarSupportedContent ul{
    font-size: 17px;
    color: rgb(0, 0, 0);
}

#admin{
    outline: none;
    margin-left: 14px;
    width: 80px;
    height: 35px;
    font-size: 10px;
    border:1px rgb(4, 175, 4) solid;
    border-radius: 5px;
    color:rgb(230, 224, 224) ;
    background: linear-gradient(130deg, rgb(63, 104, 151), rgb(96, 165, 197),rgb(35, 12, 168));
    text-decoration: none;
}





    </style>
</head>
<body>
    <!-- navBar -->
    <div class="container-fluid">
      <div class="row">
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
                  <a class="nav-link active" aria-current="page" href="index.html" >Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="addmission.html">Addmission</a>
                </li>

                  <a class="nav-link" href="about.html">About</a>
                </li>
      

              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
    

    <!-- navBar end  -->
    
    

    <div class="container mt-5">
      <div class="row">
        <div class="card col-lg-4 m-auto" style="height: 450px;">
          <div class="card-title text-center"><h5>Login</h5></div>
          <hr>
          
          <%  
              Message m=(Message)session.getAttribute("msg");
              if(m!=null){
              
              
              %>
          <div class="alert <%=m.getCssClass()%> text-center" role="alert">
             <%=m.getContent()%>
          </div>
              <%
                  
                  session.removeAttribute("msg");
                  }
              %>
          
          <div class="card-body">
            <form action="LoginServlet"  method="post">
              <br>
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div><br>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
              </div>
              <br>
              <button type="submit" class="btn btn-primary" style="width: 100%;">Submit</button>
            </form>
          </div>
          <hr>
        </div>
        
      </div>
    </div>
   

     

    <!-- java Script -->
  

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
