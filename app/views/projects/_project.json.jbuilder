json.extract! project, :id, :code, :name, :service, :start_time, :plan_complated_at, :actual_complated_at, :status, :url, :created_at, :updated_at
json.url project_url(project, format: :json)
