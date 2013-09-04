$(document).ready(function() {

  $(function() {
    $( "#sortable" ).sortable({
        axis: "y", 
        update: function(event, ui) {
          var ids = new Array(); 
          $('li').each(function (){
            ids.push($(this).data("id"));
          });
          var url = "/update"
          $.post(url,{order: ids});
          }
      });
    $( "#sortable" ).disableSelection();
  });

});

