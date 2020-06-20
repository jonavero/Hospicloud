class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :idPatient
      t.integer :idRoom
      t.integer :idDoctor
      t.string :diagnosis
      t.string :referral
      t.string :tutorName
      t.string :telephone
      t.string :relationship
      t.string :status,default:'A'
      t.integer :user_id

      t.timestamps
    end
  end
end
