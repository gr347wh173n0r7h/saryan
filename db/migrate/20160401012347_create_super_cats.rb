class CreateSuperCats < ActiveRecord::Migration
  def change
    create_table :super_cats do |t|
      t.string :name
      t.integer :units
      t.references :catalog, index:true, foreign_key:true
      t.timestamps null: false
    end
  end
end
