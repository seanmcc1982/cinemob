class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :filename
      t.text :cast
      t.text :plot
      t.binary :poster
      t.string :trailer
      t.integer :runtime
      t.string :addedby

      t.timestamps
    end
  end
end
