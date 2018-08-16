class RemoveExpiredAtFromCloudservices < ActiveRecord::Migration[5.0]
  def change
    remove_column :cloudservices, :expired_at, :string
  end
end
