$(document).ready(function(){
  
  
  var indexnum = 1 ;
  setInterval(function(){
    
    
    if(indexnum>2){
      indexnum = 0;
    };
    
  console.log(indexnum);
    
    $(".box").removeClass("active");
    $(".box").eq(indexnum).addClass("active");
    
    
  indexnum ++ ;
    
  },8000);
 
});