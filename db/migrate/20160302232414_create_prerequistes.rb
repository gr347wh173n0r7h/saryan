class CreatePrerequistes < ActiveRecord::Migration
  def change
    create_table :prerequistes do |t|

      t.timestamps null: false
    end
  end
end
