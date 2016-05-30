class CreateDevPorts < ActiveRecord::Migration
  def change
    create_table :dev_ports do |t|
      t.string :name
      t.integer :portno
      t.string :type
      t.integer :RackID
      t.integer :odfid
      t.integer :fiberid

      t.timestamps null: false
    end
  end
end
