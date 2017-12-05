class CreateBookingitems < ActiveRecord::Migration[5.1]
  def change
    create_table :bookingitems do |t|
      t.integer :showingid
      t.string :filmname
      t.text :seat
      t.decimal :price
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
