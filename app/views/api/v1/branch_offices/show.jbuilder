json.branchOffice do
  json.id @branch_office.id
  json.name @branch_office.name
  json.address @branch_office.address
  json.telephone @branch_office.telephone
  end
    json.user @branch_office.users do|u|
      json.id u.id
      json.username u.username
      json.email u.email
      json.status u.status

    end

