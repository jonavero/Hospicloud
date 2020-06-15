json.data do
  json.id @ar.id
  json.name @ar.name
  json.status @ar.status
  json.createdDate @ar.created_at
  json.user @usercreador do |user|
    json.name user.username
    json.email user.email
  end


end
