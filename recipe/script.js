$(document).ready(function(){
  console.log("Script included!");
  $('#ingredientsbutton').click(function(){
    $('#ingredients').toggle('slow');
  });
  $('#directionsbutton').click(function(){
    $('.directions').toggle('slow');
  });

  $(document).on('click', 'span', function(){
    $(this).toggleClass('crossout');
  });

  $('.recipesteps').click(function(){
    $(this).toggleClass('completedsteps');
  });  
});




