json.array!(@dev_ports) do |dev_port|
  json.extract! dev_port, :id, :name, :portno, :type, :RackID, :odfid, :fiberid
  json.url dev_port_url(dev_port, format: :json)
end
