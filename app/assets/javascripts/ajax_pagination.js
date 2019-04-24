$(window).bind("load", function() {
  $(document.body).off('click', 'nav.pagination a');
  $(document.body).on('click', 'nav.pagination a', function(e) {
    e.preventDefault();
    var loadingHTML = "<div class='loading'>Loading...</div>";
    $("#photos_container").html(loadingHTML).load($(this).attr("href"));
    return false;
  });
});
