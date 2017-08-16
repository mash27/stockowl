//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require bootstrap-sprockets
//= require_tree .

$( ".highlighter tr" ).click(function() {
  if (!$(this).hasClass('hidden-table')) {

  $(this).next().slideDown( "slow", function() {
    console.log('sliding is happening')
    $(this).toggleClass('hidden')
    // Animation complete.
  });

  }
});
