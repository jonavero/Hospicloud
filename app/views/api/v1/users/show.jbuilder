json.data do
  json.id @user.id
  json.username @user.username
  json.password @user.password
  json.email @user.email
  json.createdate @user.created_at
  json.branchOffice @branch do |bran|
    json.name bran.name
  end
end
