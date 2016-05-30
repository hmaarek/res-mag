class CreateCables < ActiveRecord::Migration
  def change
    create_table :cables do |t|
      t.string :name
      t.integer :location_a_id
      t.integer :location_b_id

      t.timestamps null: false
    end
  end
end
