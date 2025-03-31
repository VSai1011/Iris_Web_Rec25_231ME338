class CreateEquipmentBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :equipment_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :equipment
      t.integer :quantity
      t.string :time_slot

      t.timestamps
    end
  end
end
