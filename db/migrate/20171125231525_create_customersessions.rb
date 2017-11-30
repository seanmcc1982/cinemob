class CreateCustomersessions < ActiveRecord::Migration[5.1]
  def change
    create_table :customersessions do |t|
      t.string :customeremail
      t.datetime :startdatetime
      t.datetime :enddatetime
      t.string :ip

      t.timestamps
    end
  end
end
