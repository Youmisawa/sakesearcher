$(function () {
  let search_list = $(".Content");

  function appendTweet(tweet) {
    if (tweet.user_sign_in && tweet.user_sign_in.id == tweet.user_id) {
      let html = `<div class="Content__post" style="background-image: url(${tweet.image});">
                  <div class="Content__post__more">
                    <a class="Content__post__more__list" href="/tweets/${tweet.id}" data-method="get" >詳細</a>
                    <a class="Content__post__more__list" href="/tweets/${tweet.id}" data-method="delete" >削除</a>
                    <a class="Content__post__more__list" href="/tweets/${tweet.id}/edit" data-method="get" >編集</a>
                  </div>
                  <p>${tweet.tweetname}</p><br>
                  <span>
                    <a href="/users/${tweet.user_id}">
                    投稿者　${tweet.name}
                    </a>
                  </span>
                </div>`
      search_list.append(html);
    } else {
      let html = `<div class="Content__post" style="background-image: url(${tweet.image});">
                  <div class="Content__post__more">
                    <a class="Content__post__more__list" href="/tweets/${tweet.id}" data-method="get" >詳細</a>
                  </div>
                  <p>${tweet.tweetname}</p><br>
                  <span>
                    <a href="/users/${tweet.user_id}">
                    投稿者　${tweet.name}
                    </a>
                  </span>
                </div>`
      search_list.append(html);
    }
  }

  function appendErrMsgToHTML(msg) {
    let html = `<div class='Content__no-tweet'>${msg}</div>`
    search_list.append(html);
  }

  $(".Search__comment__search-input").on("keyup", function () {
    let input = $(".Search__comment__search-input").val();

    $.ajax({
      type: 'GET',
      url: '/tweets/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function (tweets) {
      search_list.empty();
      if (tweets.length !== 0) {
        tweets.forEach(function (tweet) {
          appendTweet(tweet);
        });
      }
      else {
        appendErrMsgToHTML("＊投稿がありません＊");
      }
    })
    .fail(function () {
      alert('error');
    });
  });
});