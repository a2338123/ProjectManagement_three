class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :projectid
      t.string :name
      t.string :service
      t.string :start_time
      t.string :plan_complated_at
      t.string :actual_complated_at
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
