class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.belongs_to :user, index: true
      t.string :school_id
      t.string :department_id
      t.string :major_id
      t.string :catalog_id
      t.timestamps null: false
    end
  end
end
