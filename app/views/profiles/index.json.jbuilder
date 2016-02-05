json.array!(@profiles) do |profile|
  json.extract! profile, :id, :Name, :Description, :Country, :string, :Color, :string, :Age, :Weight, :Height
  json.url profile_url(profile, format: :json)
end
