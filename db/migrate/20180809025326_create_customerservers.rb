class CreateCustomerservers < ActiveRecord::Migration[5.0]
  def change
    create_table :customerservers do |t|
      t.string :code
      t.string :customerservice
      t.string :customer
      t.date :deadline
      t.string :our_server

      t.timestamps
    end
  end
end
