$(function () {
  function buildHTML(review) {
    let html = `<p class="Content__reviews__comments__1">
                  <a href=/users/${review.user_id}>${review.user_name}</a>:
                  ${review.comment}
                </p>`
    return html;
  }
  $('#new_comment').on('submit', function (e) {
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "post",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function (data) {
      let html = buildHTML(data);
      $('.Content__reviews__comments').append(html);
      $('.Content__reviews__comment-write').val('');
      $('.Content__reviews__submit-btn').prop('disabled', false);
    })
    .fail(function () {
      alert('error');
    })
  })
});