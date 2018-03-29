json.extract! event, :id, :name, :description, :event_date, :address_line1, :address_line2, :leader_name, :leader_phone, :details, :status, :created_at, :updated_at
json.url event_url(event, format: :json)
