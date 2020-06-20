json.data do
  json.id @entry_medicine.id
  json.idMedicine @entry_medicine.idMedicine
  json.idEntry @entry_medicine.idEntry
  json.amount @entry_medicine.amount
  json.createDate @entry_medicine.created_at


end
