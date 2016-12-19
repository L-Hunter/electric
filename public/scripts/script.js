// When the DOM is ready, run this function
$(document).ready(function() {
  //Set the carousel options
  $('#quote-carousel').carousel({
    pause: true,
    interval: 4000,
  });

  //Make the modal appear after 2 seconds on the page

  function show_modal() {
  	$('#promoModal').modal();
  }

  setTimeout(show_modal, 2000);


  $('#promocode').click(function(){
  	$('#promo-message').append("<p>Promo code <span class='emphasis upsize'>SOLSTICE</span> added!</p>")
  })

});
