class CreateSemesterRefs < ActiveRecord::Migration
  def change
    create_table :semester_refs do |t|
      t.references :semester, index:true, foreign_key:true
      t.references :course, index:true, foriegn_key:true
      t.timestamps null: false
    end
  end
end
