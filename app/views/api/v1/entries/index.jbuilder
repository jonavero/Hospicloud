json.Entry @entries do |e|
  json.id e.id
  json.idPatient e.idPatient
  json.idRoom e.idRoom
  json.idDoctor e.idDoctor
  json.diagnosis e.diagnosis
  json.referral e.referral
  json.tutorName e.tutorName
  json.relationship e.relationship
  json.telephone e.telephone
  json.status e.status

end