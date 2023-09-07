$(document).ready(function(){

    $("#list-title").on('click',function(){

        $(".list-div").css({border:"1px solid white",background:"#122943"});
        $("#list").toggle();
        $("#list").css("background","gray");
    });
     
      $("#content").on('click',function(){
      
       $("#main-default-con").toggle();
       $("#video-con").toggle();
           
    });
});


