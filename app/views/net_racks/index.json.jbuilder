json.array!(@net_racks) do |net_rack|
  json.extract! net_rack, :id, :name, :locationid
  json.url net_rack_url(net_rack, format: :json)
end
