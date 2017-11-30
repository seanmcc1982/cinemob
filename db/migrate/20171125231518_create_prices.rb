class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :pricelabel
      t.text :day
      t.integer :hourstart
      t.integer :hourend
      t.boolean :event
      t.decimal :value
      t.string :addedby

      t.timestamps
    end
  end
end
