$(document).ready(function(){
  $('.investor-card-description').on('click', function() {
    // $('.preview-box').removeClass('hidden');
    changeText(this);
    changeStocks(this);
    changeImage(this);
    changeDescription(this);
  });

  $('.btn-preview').on('click', function(event) {
    event.preventDefault();
    // We rely on the event listener set up on investor-card-description
  })

  function changeText(item) {
    $('#preview .i-name').text($(item).find('h3').text());
    $('#preview .f-name').text($(item).find('.f-name').text());
    $('#preview .p-value').text($(item).find('.p-value').text());

    var portfolioLink = $(item).find('.btn-portfolio').attr("href");
    $('#preview .view-btn').attr('href', portfolioLink);
  }
  function changeStocks(item) {
    $('ul.stocks').html('');

    $(item).find('li').each(function(index, item){
      $('ul.stocks').append('<li>' + $(item).text() + '</li>')
    })
  }
  function changeImage(item) {
    var foundImage = 'url(' + $(item).find('.card-image').data('image') + ')'
    $('#preview .card-image').css('background-image', foundImage)
    $('#preview .card-image').attr('src', ($(item).find('img').attr('src')))
  }

  function changeDescription(item) {
    $('#preview .description').text($(item).find('.description').text())
  }
})


