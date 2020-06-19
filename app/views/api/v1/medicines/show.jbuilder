json.data do
  json.id @medicine.id
  json.description @medicine.description
  json.status @medicine.status
  json.createdDate @medicine.created_at
  json.user @usercreador do |user|
    json.email user.email
  end


end
