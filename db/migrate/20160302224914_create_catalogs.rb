class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :degree
      t.integer :cat_yr, index:true

      t.timestamps null: false
    end
  end
end
