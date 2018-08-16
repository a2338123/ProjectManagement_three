class ChangeStringInProjects < ActiveRecord::Migration[5.0]
  def self.up
    change_table :projects do |t|
	  t.change :start_time, :date
	  t.change :plan_complated_at,   :date
	  t.change :actual_complated_at, :date
	end
  end

  def self.down
    change_table :projects do |t|
	  t.change :start_time, :string
	  t.change :plan_complated_at,   :date
	  t.change :actual_complated_at, :date
	end
  end
end
