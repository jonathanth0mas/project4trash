class AddDateToPickup < ActiveRecord::Migration
  def change
    add_column :pickups, :date, :datetime
  end
end
