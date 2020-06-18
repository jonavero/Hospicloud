json.data do
  json.id @doctor.id
  json.name @doctor.name
  json.lastname @doctor.lastname
  json.identityCard @doctor.identityCard
  json.exequatur @doctor.exequatur
  json.status @doctor.status
  json.createdDate @doctor.created_at
  json.user @usercreador do |user|
    json.email user.email
  end


end
