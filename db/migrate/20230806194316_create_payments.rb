class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :package_id
      t.integer :booking_id
      t.integer :card_number
      t.datetime :expiration_date
      t.integer :cvc
      t.integer :date_paid
      t.integer :total_amount

      t.timestamps
    end
  end
end
