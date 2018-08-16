class AddExpiredAtToCloudservices < ActiveRecord::Migration[5.0]
  def change
    add_column :cloudservices, :expired_at, :date
  end
end
