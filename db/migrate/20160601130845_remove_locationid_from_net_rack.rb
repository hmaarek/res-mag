class RemoveLocationidFromNetRack < ActiveRecord::Migration
  def change
    remove_column :net_racks, :locationid, :string
  end
end
