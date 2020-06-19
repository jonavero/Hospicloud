json.data do
  json.id @patient.id
  json.name @patient.name
  json.lastname @patient.lastname
  json.birthday @patient.birthday
  json.gender @patient.gender
  json.identityCard @patient.identityCard
  json.address @patient.address
  json.civilState @patient.civilState
  json.thumbnail @patient.thumbnail
  json.phone @patient.phone
  json.telephone @patient.telephone
  json.idARS @patient.idARS
  json.numARS @patient.numARS
  json.status @patient.status
  json.createdDate @patient.created_at
  json.user @usercreador do |user|
    json.email user.email
  end


end
