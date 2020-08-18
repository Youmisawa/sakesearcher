class ChangeDataTextToTweets < ActiveRecord::Migration[6.0]
  def change
    change_column :tweets, :text, :text
  end
end
