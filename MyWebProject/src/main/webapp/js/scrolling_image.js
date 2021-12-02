/**
 * 
 */
 
 
 var imgs = document.getElementById("scrollingImg");
 var scr1 = document.getElementById("scrolling1");
 var scr2 = document.getElementById("scrolling2");
 
 
 function marquee(){
 	scr1.scrollLeft += 2;
 }
 
 setInterval("marquee()", 10);
