class CreateBeds < ActiveRecord::Migration[6.0]
  def change
    create_table :beds do |t|
      t.integer :idRoom
      t.string :name
      t.string :status,default:'A'
      t.integer :user_id

      t.timestamps
    end
  end
end
