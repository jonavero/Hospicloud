json.data do
  json.id @user.id
  json.name @user.username
  json.email @user.email
  json.createdate @user.created_at

end
