class AddStatusToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :infrastructure_bookings, :status, :integer, default: 0
    add_column :equipment_bookings, :status, :integer, default: 0
  end
end
