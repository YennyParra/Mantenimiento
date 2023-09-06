json.extract! machine, :id, :type, :name, :description, :photo, :created_at, :updated_at
json.url machine_url(machine, format: :json)
