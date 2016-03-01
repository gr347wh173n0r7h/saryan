class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.integer :cat_year
      t.integer :major_id
      t.integer :cat_year
      t.timestamps null: false
    end
  end
end
