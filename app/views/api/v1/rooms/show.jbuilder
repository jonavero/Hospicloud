json.data do
  json.id @room.id
  json.numRoom @room.numRoom
  json.area @room.area
  json.amountRoom @room.amountRoom
  json.status @room.status
  json.createdDate @room.created_at
  json.user @usercreador do |user|
    json.email user.email
  end


end
