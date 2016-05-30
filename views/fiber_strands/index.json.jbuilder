json.array!(@fiber_strands) do |fiber_strand|
  json.extract! fiber_strand, :id, :name, :port1id, :port2id, :cableid
  json.url fiber_strand_url(fiber_strand, format: :json)
end
