json.array!(@cables) do |cable|
  json.extract! cable, :id, :name, :location_a_id, :location_b_id
  json.url cable_url(cable, format: :json)
end
