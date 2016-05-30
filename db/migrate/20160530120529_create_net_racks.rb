class CreateNetRacks < ActiveRecord::Migration
  def change
    create_table :net_racks do |t|
      t.string :name
      t.string :locationid

      t.timestamps null: false
    end
  end
end
