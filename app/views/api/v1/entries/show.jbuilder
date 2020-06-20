json.data do
  json.id @entry.id
  json.idPatient @entry.idPatient
  json.idRoom @entry.idRoom
  json.idDoctor @entry.idDoctor
  json.diagnosis @entry.diagnosis
  json.referral @entry.referral
  json.tutorName @entry.tutorName
  json.relationship @entry.relationship
  json.telephone @entry.telephone
  json.status @entry.status
  json.createDate @entry.created_at
  json.user @usercreador do |user|
    json.email user.email
  end


end
