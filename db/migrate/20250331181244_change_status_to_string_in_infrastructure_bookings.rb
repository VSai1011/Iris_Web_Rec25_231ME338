class ChangeStatusToStringInInfrastructureBookings < ActiveRecord::Migration[8.0]
  def up
    change_column :infrastructure_bookings, :status, :string, default: "pending"
  end

  def down
    change_column :infrastructure_bookings, :status, :integer, using: "status::integer", default: 0
  end
end
