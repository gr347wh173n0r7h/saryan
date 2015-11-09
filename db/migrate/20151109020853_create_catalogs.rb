class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :dep
      t.integer :course_id
      t.string :cat
      t.string :sub_cat
      t.timestamps null: false
    end
  end
end
