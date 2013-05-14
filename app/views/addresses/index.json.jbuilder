json.array!(@addresses) do |address|
  json.extract! address, :fkMemberID, :addr1, :addr2, :city, :state, :zip, :addressWhich
  json.url address_url(address, format: :json)
end