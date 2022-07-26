class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :tour
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
