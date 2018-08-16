class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :code
      t.string :name
      t.string :contact_person_name
      t.string :contact_person_mobile

      t.timestamps
    end
  end
end
