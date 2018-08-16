class AddDeadlineToCustomerservers < ActiveRecord::Migration[5.0]
  def change
    add_column :customerservers, :deadline, :date
  end
end
