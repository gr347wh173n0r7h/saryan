class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|

      t.integer :course_id
      t.integer :cat_year
      t.integer :course_id


      t.timestamps null: false
    end
  end
end
