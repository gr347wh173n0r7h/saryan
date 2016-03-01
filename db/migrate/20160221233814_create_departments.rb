class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :school_id
      t.string :major_name
      t.timestamps null: false
    end
  end
end
