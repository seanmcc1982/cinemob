class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime :bookingdate
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
