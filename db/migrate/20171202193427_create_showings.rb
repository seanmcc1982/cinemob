class CreateShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :showings do |t|
      t.datetime :slot
      t.string :screenname
      t.string :filmname
      t.decimal :price
      t.string :addedby

      t.timestamps
    end
  end
end
