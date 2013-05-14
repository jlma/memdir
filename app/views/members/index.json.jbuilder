json.array!(@members) do |member|
  json.extract! member, :lastName, :wifeName, :fmcaNumber, :photoFile
  json.url member_url(member, format: :json)
end