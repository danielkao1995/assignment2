json.array!(@profiles) do |profile|
  json.extract! profile, :id, :Name, :Description, :Country, :Color, :Age, :Weight, :Height
  json.url profile_url(profile, format: :json)
end
