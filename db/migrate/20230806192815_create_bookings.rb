class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :package_id
      t.integer :days_booked
      t.integer :number_of_people

      t.timestamps
    end
  end
end
