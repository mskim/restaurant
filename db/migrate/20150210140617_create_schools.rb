class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :area
      t.string :address
      t.string :zip

      t.timestamps null: false
    end
  end
end
