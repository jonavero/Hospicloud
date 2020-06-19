class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :lastname
      t.string :birthday
      t.string :gender
      t.string :identityCard
      t.string :address
      t.string :civilState
      t.string :thumbnail
      t.string :phone
      t.string :telephone
      t.integer :idARS
      t.string :numARS
      t.string :status,default:'A'
      t.integer :user_id

      t.timestamps
    end
  end
end
