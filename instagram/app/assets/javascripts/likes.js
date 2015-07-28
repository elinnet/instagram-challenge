$(document).ready(function() {

  $('.likes-link').on('click', function(event){ //when user clikcs 'likes' link
      event.preventDefault();

      var likeCount = $(this).siblings('.likes_count'); //this is the likes counter

      $.post(this.href, function(response){ //this.href is URL request is being sent to - what link is this?
        likeCount.text(response.new_like_count); //not sure what this last bit means

    });
  });
});
