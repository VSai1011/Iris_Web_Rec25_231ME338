class CreateInfrastructureBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :infrastructure_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :sport
      t.string :location
      t.string :time_slot

      t.timestamps
    end
  end
end
