$(document).ready(function() {


  $('#add_activity').on("click", function(event) {
    event.preventDefault();
    $('#new_activity').show();
    $(this).hide();
  });

  $('#new_activity').on("submit", function(event) {
    event.preventDefault();
    $.ajax({url: $(this).attr("action"),
            method: "POST",
            data: $(this).serialize()
            }).done(function(serverdata) {
              // console.log("success!!!!");
              var newDiv = $('.all-activities .activity:first-child').clone();
              newDiv.find(".activity-name").find('a').attr('href', '/activities/' + serverdata.id);
              newDiv.find(".activity-name").find('a').text(serverdata.name);
              newDiv.find(".activity-description").text(serverdata.description);
              newDiv.appendTo(".all-activities");
            }).fail(function(serverdata) {
              alert("failll");
            })

  });

  $('.expand').on("click", function() {
    $('.chat-input-fields').show();
  });

})
