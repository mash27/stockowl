//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require_tree .

// $( ".highlighter tr" ).click(function() {
//   if (!$(this).hasClass('hidden-table')) {

//   $(this).next().slideDown( "slow", function() {
//     console.log('sliding is happening')
//     $(this).toggleClass('hidden')
//     // Animation complete.
//   });

//   }
// });

$(document).ready(function(){
  // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal();
});



$(".alert" ).fadeOut(3000);

