$(function() {
  $(document.body).off('click', 'pagination a');
  $(document.body).on('click', 'pagination a', function(e) {
    e.preventDefault();
    var loadingHTML = "<div class='loading'>Loading...</div>";
    $("#photos_container").html(loadingHTML).load($(this).attr("href"));
    return false;
  });
});

console.log('Hello World from Webpacker')
