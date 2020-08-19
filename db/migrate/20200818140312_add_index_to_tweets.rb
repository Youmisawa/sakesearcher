class AddIndexToTweets < ActiveRecord::Migration[6.0]
  def change
    add_index :tweets, :tweetname, length: 32
  end
end
