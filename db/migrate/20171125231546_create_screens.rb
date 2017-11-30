class CreateScreens < ActiveRecord::Migration[5.1]
  def change
    create_table :screens do |t|
      t.string :screenname
      t.integer :rows
      t.integer :width
      t.text :allocation
      t.string :addedby

      t.timestamps
    end
  end
end
