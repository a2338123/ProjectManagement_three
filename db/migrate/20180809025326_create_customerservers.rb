class CreateCustomerservers < ActiveRecord::Migration[5.0]
  def change
    create_table :customerservers do |t|
      t.string :customerserviceid
      t.string :customerservice
      t.string :customer
      t.string :deadline
      t.string :our_server

      t.timestamps
    end
  end
end
