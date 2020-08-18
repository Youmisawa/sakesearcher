class AddTweetnameToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :tweetname, :string
  end
end
