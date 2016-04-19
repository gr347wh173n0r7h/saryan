class CreatePrereqs < ActiveRecord::Migration
  def self.up
    create_table :prereqs, id: false do |t|
      t.integer :course_id, index:true
      t.integer :prereq_course_id, index:true
      t.timestamps null: false
    end
    add_index :prereqs, [:course_id, :prereq_course_id], unique: true
    add_index :prereqs, [:prereq_course_id, :course_id], unique: true

  end

  def self.down
    add_index :prereqs, [:course_id, :prereq_course_id]
    add_index :prereqs, [:prereq_course_id, :course_id]
    drop_table :prereqs
  end
end
