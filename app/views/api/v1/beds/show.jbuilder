json.data do
  json.id @bed.id
  json.idRoom @bed.idRoom
  json.name @bed.name
  json.status @bed.status
  json.createdDate @bed.created_at
  json.user @usercreador do |user|
    json.email user.email
  end


end
