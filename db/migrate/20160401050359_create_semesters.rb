class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :name
      t.integer :year
      t.references :planner, index:true, foreign_key:true
      t.references :saved_plan, index:true, foreign_key:true
      t.timestamps null: false
    end
  end
end
