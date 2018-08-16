class CreateCloudservices < ActiveRecord::Migration[5.0]
  def change
    create_table :cloudservices do |t|
      t.string :code
      t.string :vendor
      t.date :expired_at

      t.timestamps
    end
  end
end
