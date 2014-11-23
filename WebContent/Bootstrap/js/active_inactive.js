$(".nav li").on("click", function() {
      $(".nav li").removeClass("active");
      $(this).addClass("active");
    });

 $(".btn btn-default").on("click",function()

  {
  	$(".nav li").removeClass("active");
  	$("#home").addClass("active");


  });



   $(".btn btn-primary").on("click",function()

  {
  	$(".nav li").removeClass("active");
  	$("#home").addClass("active");
});