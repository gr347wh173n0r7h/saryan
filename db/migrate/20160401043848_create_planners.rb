class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.string :name
      t.string :type

      t.references :user, index:true, foreign_key:true
      t.timestamps null: false
    end
  end
end
