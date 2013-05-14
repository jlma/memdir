json.array!(@emergency_contacts) do |emergency_contact|
  json.extract! emergency_contact, :fkMemberID, :name, :addr1, :addr2, :city, :state, :zip, :phoneNumber
  json.url emergency_contact_url(emergency_contact, format: :json)
end