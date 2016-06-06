$ (document).ready(function(){
  markRead();
  markUnread();
});

function markRead() {
  $('.user-links').delegate('.unread-link', 'click', function () {

    var link = $(this).closest('.link-content');
    console.log(link);
    linkId = $(this).parent().attr('id');
    console.log(linkId);
    var status = "false"
    $(this).closest('.unread-link').hide();
    // var currentStatus = idea.find('.quality').text();
    // var newQuality = upVotedQuality(currentQuality);
    // updateQuality(ideaId, currentQuality, newQuality, idea);
    // console.log(currentQuality);

  });
}

function markUnread() {
  $('.user-links').delegate('.read-link', 'click', function () {

    var link = $(this).closest('.link-content');
    console.log(link);
    linkId = $(this).parent().attr('id');
    console.log(linkId);

    var status = "true"
    $(this).closest('.read-link').hide();
    $(this).closest('.unread-link').show();
    // var currentStatus = idea.find('.quality').text();
    // var newQuality = upVotedQuality(currentQuality);
    // updateQuality(ideaId, currentQuality, newQuality, idea);
    // console.log(currentQuality);

  });

  function changeReadStatus(id, status) {
  $.ajax({
    type: "PATCH",
    url: "/api/v1/links/" + id,
    data: {
      link: {
        title: updatedInfo.title,
        body: updatedInfo.body
      }
    },
    success: function() {
      console.log('edited');
    }
  });

}
