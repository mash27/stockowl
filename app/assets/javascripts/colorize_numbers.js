$(document).ready(function() {
  var array_td = $('td')
  console.log('second')
  $.each(array_td, function(index, html_element) {
    if (html_element.innerText.includes("%")) {
     var number = parseInt(html_element.innerText)
     console.log('im here');
      if (number > 10) {
        $(html_element).addClass('green-class')
        console.log('positive')
      }
      if (number < -10) {
        $(html_element).addClass('red-class')
        console.log('negative')
      };
    };
  });
});
