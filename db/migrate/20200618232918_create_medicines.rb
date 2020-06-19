class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :description
      t.string :status,default:'A'
      t.integer :user_id

      t.timestamps
    end
  end
end
