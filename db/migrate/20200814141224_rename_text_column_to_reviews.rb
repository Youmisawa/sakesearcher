class RenameTextColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :text, :comment
  end
end
