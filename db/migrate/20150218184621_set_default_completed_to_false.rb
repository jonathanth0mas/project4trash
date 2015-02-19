class SetDefaultCompletedToFalse < ActiveRecord::Migration
  def change
    change_column_default :pickups, :completed, false
  end
end
