class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :dep
      t.string :name
      t.string :desc
      t.integer :course_num
      t.integer :units
      t.timestamps null: false
    end
  end
end
