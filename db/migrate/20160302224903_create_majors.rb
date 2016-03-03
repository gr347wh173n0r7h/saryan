class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.string :name
      t.string :maj_abbrev
      t.references :department, index:true, foreign_key:true
      t.timestamps null: false
    end
  end
end
