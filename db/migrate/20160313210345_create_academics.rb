class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.references :user, index: true, foreign_key:true
      t.references :school, index: true, foreign_key:true
      t.references :department, index: true, foreign_key:true
      t.references :catalog, index: true, foreign_key:true

      t.timestamps null: false
    end
  end
end
