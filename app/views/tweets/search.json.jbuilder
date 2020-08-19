json.array! @tweets do |tweet|
  json.id tweet.id
  json.tweetname tweet.tweetname
  json.image tweet.image.url
  json.user_id tweet.user_id
  json.name tweet.user.name
  json.user_sign_in current_user
end