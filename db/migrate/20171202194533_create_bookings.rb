class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :customeremail
      t.integer :showingid
      t.string :seat
      t.decimal :totalprice
      t.boolean :iscancelled

      t.timestamps
    end
  end
end
