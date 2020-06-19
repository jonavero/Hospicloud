class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :numRoom
      t.string :area
      t.integer :amountRoom
      t.string :status,default:'A'
      t.integer :user_id

      t.timestamps
    end
  end
end
