class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :dep
      t.string :name
<<<<<<< HEAD:db/migrate/20151109021044_create_courses.rb
      t.text :desc
      t.integer :course_num
=======
      t.string :abbrev
>>>>>>> newDB2:db/migrate/20160302225055_create_courses.rb
      t.integer :units
      t.text :desc

      t.timestamps null: false
    end
  end
end
