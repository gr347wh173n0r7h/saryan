class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.belongs_to :catalog, index:true
      t.belongs_to :course, index:true
      t.string :type
      t.timestamps null: false
    end
  end
end
