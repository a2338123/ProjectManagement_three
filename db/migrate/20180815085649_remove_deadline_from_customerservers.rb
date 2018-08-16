class RemoveDeadlineFromCustomerservers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customerservers, :deadline, :string
  end
end
