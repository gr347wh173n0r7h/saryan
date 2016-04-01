class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :units
      t.references :super_cat, index:true, foreign_key:true

      t.timestamps null: false
    end
  end
end
