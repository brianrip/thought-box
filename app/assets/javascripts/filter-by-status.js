$ (document).ready(function() {
  var $links = $('.link-content');

  $('.view-read').on('click', function() {
    $links.each(function (link, index) {
      var $link = $(link);
      if ($link.closest("date-id") === false) {
        $link.show();
      } else {
        $link.hide();
      }
    });
  });
});
