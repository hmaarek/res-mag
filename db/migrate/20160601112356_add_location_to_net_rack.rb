class AddLocationToNetRack < ActiveRecord::Migration
  def change
    add_reference :net_racks, :locations, index: true, foreign_key: true
  end
end
