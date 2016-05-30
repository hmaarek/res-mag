class CreateTermDevs < ActiveRecord::Migration
  def change
    create_table :term_devs do |t|
      t.string :name
      t.string :type
      t.integer :RackID

      t.timestamps null: false
    end
  end
end
