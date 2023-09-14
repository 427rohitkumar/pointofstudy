$(document).ready(function(){
    $("#leftArrow").on('click',function(){
        $("#left-menu").toggle();

        if (window.matchMedia('(max-width:992px)').matches) {
            $("#content-div").hide();
        } 
    });
  
    $("#cross").on('click',function(){
        $("#content-div").show();
        $("#left-menu").hide();
    });
    
//    left menu profile menu click function 
    $("#profile-phone-view").on('click',function(){
        $("#content-div").show();
        $("#left-menu").hide();
    });
    
    // $("#profile").on('click',function(){
       
    //     $("#profileSlide").slideToggle('fast');
       
    // });

    $("#profile").on('click',function(){
        // $("#profileSlide").hide();
        $("#container").toggle();
        $("#videoCard-main-div").toggle();

    });
    
      $("#profile-phone-view").on('click',function(){
        // $("#profileSlide").hide();
        $("#container").toggle();
        $("#videoCard-main-div").toggle();

    });
    
    $("#xmark").on('click',function(){
        $("#container").hide();
        $("#videoCard-main-div").show();


    });

    // $(document).click(function(){
    //     $('#profileSlide:visible').hide();
    // });


  
});

