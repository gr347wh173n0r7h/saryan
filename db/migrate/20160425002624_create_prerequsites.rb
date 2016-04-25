class CreatePrerequsites < ActiveRecord::Migration
  def change
    create_table :prerequsites do |t|
      t.references :course, index:true, foreign_key:true
      t.integer :prereq_id, index:true

      t.timestamps null: false
    end
  end
end
