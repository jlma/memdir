json.array!(@phones) do |phone|
  json.extract! phone, :fkMemberID, :whichPhone, :phoneNumber
  json.url phone_url(phone, format: :json)
end