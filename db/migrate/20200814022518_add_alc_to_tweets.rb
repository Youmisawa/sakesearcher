class AddAlcToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :alc, :integer
  end
end
