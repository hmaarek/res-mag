class CreateFiberStrands < ActiveRecord::Migration
  def change
    create_table :fiber_strands do |t|
      t.string :name
      t.integer :port1id
      t.integer :port2id
      t.integer :cableid

      t.timestamps null: false
    end
  end
end
