json_file = File.read("#{Rails.root}/trimmed_profiles.json")
json_hash = JSON.parse(json_file)

json_hash.each do |consultant_hash|
  skills = consultant_hash["skills"].join(", ") if consultant_hash["skills"].is_a?(Array)
  Consultant.create(
    locality: consultant_hash["locality"],
    given_name: consultant_hash["given_name"],
    full_name: consultant_hash["full_name"],
    skills: skills,
    summary: consultant_hash["summary"],
    unique_id: consultant_hash["unique_id"]
  )
end
