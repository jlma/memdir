json.array!(@emails) do |email|
  json.extract! email, :fkMemberID, :emailAddress, :emailWho
  json.url email_url(email, format: :json)
end