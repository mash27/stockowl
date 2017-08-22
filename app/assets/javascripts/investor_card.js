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
      $('ul.stocks').append('<li>' + $(item).text() + '</li>')
    })

  })
})
