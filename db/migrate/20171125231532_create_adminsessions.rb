class CreateAdminsessions < ActiveRecord::Migration[5.1]
  def change
    create_table :adminsessions do |t|
      t.string :username
      t.datetime :startdatetime
      t.datetime :enddatetime
      t.string :ip

      t.timestamps
    end
  end
end
