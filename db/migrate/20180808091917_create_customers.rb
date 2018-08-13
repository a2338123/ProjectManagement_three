class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customerid
      t.string :name
      t.string :contact
      t.string :contactmethod

      t.timestamps
    end
  end
end
