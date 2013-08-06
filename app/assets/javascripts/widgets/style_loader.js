$(document).ready(function(){
   alert('here');
    $("head").append("<link>");
    css = $("head").children(":last");
    css.attr({
      rel:  "stylesheet",
      type: "text/css",
      href: "http://fast-crag-9968.herokuapp.com//assets/widgets/index.css"
    });

});