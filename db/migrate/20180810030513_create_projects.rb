class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :code
      t.string :name
      t.string :service
      t.date :start_time
      t.date :plan_complated_at
      t.date :actual_complated_at
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
