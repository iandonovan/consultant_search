json_file = File.read("#{Rails.root}/trimmed_profiles.json")
json_hash = JSON.parse(json_file)

json_hash.each do |consultant_hash|
  Consultant.create(
    locality: consultant_hash["locality"],
    given_name: consultant_hash["given_name"],
    full_name: consultant_hash["full_name"],
    skills: consultant_hash["skills"],
    unique_id: consultant_hash["unique_id"]
  )
end
