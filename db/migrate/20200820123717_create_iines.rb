class CreateIines < ActiveRecord::Migration[6.0]
  def change
    create_table :iines do |t|
      t.references :tweet, null: false, foreign_key: true
      t.string :ip 
      t.timestamps
    end
  end
end
