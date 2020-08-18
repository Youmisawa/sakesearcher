class ChangeColumnToAllowNull < ActiveRecord::Migration[6.0]
  def up
    change_column :tweets, :name,:string, null: true 
  end

  def down
    change_column :tweets, :name,:string, null: false
  end
end
