$(window).scroll(function(){;
    w = Math.floor( $(window).scrollTop() );  
   $('.remove').removeClass('bg-success'); 
    if(w>=$('#contact').offset().top){
         $('.remove').addClass( 'bg-success' );   
    }
}); 