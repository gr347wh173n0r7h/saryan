class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :major_id


      t.timestamps null: false
    end
  end
end
