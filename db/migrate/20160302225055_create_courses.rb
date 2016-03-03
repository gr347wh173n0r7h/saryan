class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :dep
      t.string :name
      t.string :abbrev
      t.integer :units
      t.text :desc

      t.timestamps null: false
    end
  end
end
