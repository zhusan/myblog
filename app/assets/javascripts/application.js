// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
// = require kindeditor
//= require_tree .
//
function showToggle(obj){
  $(obj).nextAll("ul").slideToggle("slow");
}

function auto_tag_list(tag_name)
{
  if ($('#blog_tag_list').val()== "" || $('#blog_tag_list').val() == null)
  {$('#blog_tag_list').val(tag_name);}
  else
  {$('#blog_tag_list').val($('#blog_tag_list').val()+ ',' + tag_name);}
}

$(window).ajaxStart(function(){
  alert(111);
  var width, heigh;
  if (window != window.top) {
    width = (window.top.Shadowbox.content.width - 200) / 2;
    height = (window.top.Shadowbox.content.height - 30) / 2 - 50;
  }
  else {
    height = (window.screen.height - 30) / 2 - 150;
    if (window.innerWidth) {
      width = (window.innerWidth - 200) / 2;
    }else{
      width = (document.body.clientWidth - 200) / 2;
    }

  }});


