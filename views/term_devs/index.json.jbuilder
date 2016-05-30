json.array!(@term_devs) do |term_dev|
  json.extract! term_dev, :id, :name, :type, :RackID
  json.url term_dev_url(term_dev, format: :json)
end
