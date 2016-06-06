$ (document).ready(function(){
  markRead();
  markUnread();
});

function markRead() {
  $('.user-links').delegate('.unread-link', 'click', function () {
    var link = $(this).closest('.link-content');
    linkId = $(this).parent().attr('id');
    var status = "false";
    link.addClass("read-color");
    link.removeClass("unread-color");
    $(this).closest('.read-link').hide();
    $(this).closest('.unread-link').show();

    changeReadStatus(linkId, status);
  });
}

function markUnread() {
  $('.user-links').delegate('.read-link', 'click', function (){

    var link = $(this).closest('.link-content');
    linkId = $(this).parent().attr('id');
    var status = "true";
    link.addClass("unread-color");
    link.removeClass("read-color");
    $(this).closest('.unread-link').hide();
    $(this).closest('.read-link').show();
    changeReadStatus(linkId, status);
    });
  }

  function changeReadStatus(id, status) {
    $.ajax({
      type: "PATCH",
      url: "/api/v1/links/" + id,
      data: {
          id: id,
          read: status,
      },
      success: function() {
        console.log('edited');
      }
    });
  }
