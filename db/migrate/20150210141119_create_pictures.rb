class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      # t.string :cation
      t.string :picture
      t.integer :menu_id

      t.timestamps null: false
    end
  end
end
