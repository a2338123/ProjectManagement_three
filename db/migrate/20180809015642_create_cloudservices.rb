class CreateCloudservices < ActiveRecord::Migration[5.0]
  def change
    create_table :cloudservices do |t|
      t.string :cloudserviceid
      t.string :vendor
      t.string :expired_at

      t.timestamps
    end
  end
end
