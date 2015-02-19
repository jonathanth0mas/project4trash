class AddCompletedToPickups < ActiveRecord::Migration
  def change
    add_column :pickups, :completed, :boolean
  end
end
