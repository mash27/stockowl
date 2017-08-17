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


$(document).ready(function(){
  $('.investor-card-description').on('click', function() {
  $('#preview img').attr('src', ($(this).find('img').attr('src')))

    $('#preview .i-name').text($(this).find('h3').text())
    $('#preview .f-name').text($(this).find('.f-name').text())
    $('#preview .p-value').text($(this).find('.p-value').text())
    $('#preview .view-btn').attr('href',($(this).find('.view-btn').attr('href')))

      $('ul.stocks').html('')
    $(this).find('li').each(function(index, item){
      console.log($(item).text())
      $('ul.stocks').append('<li> <em>Stock:</em>' + $(item).text() + '</li>')
    })

  })
})

$(".alert" ).fadeOut(3000);
