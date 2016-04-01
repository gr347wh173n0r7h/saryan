class CreateSavedPlans < ActiveRecord::Migration
  def change
    create_table :saved_plans do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
