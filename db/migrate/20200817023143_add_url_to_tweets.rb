class AddUrlToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :url, :text
  end
end
