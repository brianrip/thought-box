$ (document).ready(function() {
  var $links = $('.link-content');

  $('#find-link').on('keyup', function() {
    var currentText = this.value.toLowerCase();

    $links.each(function (index, link) {
      var $link = $(link);
      var $linkObject = $link.find('.link-text').text().toLowerCase();
      if ($linkObject.indexOf(currentText) >= 0) {
        $link.show();
      } else {
        $link.hide();
      }
    });
  });
});
