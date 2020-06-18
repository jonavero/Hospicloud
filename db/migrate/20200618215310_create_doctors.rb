class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :lastname
      t.string :identityCard
      t.string :exequatur
      t.string :status,default:'A'
      t.integer :user_id

      t.timestamps
    end
  end
end
