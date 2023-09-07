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
    
    $("#profile").on('click',function(){
       
        $("#profileSlide").slideToggle('fast');
       
    });

    $("#tex-profile").on('click',function(){
        $("#profileSlide").hide();
        $("#container").toggle();
        $("#videoCard-main-div").toggle();

    });
    
      $("#xxmark").on('click',function(){
        $("#container").hide();
        $("#videoCard-main-div").show();


    });
});


