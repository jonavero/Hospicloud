class CreateArs < ActiveRecord::Migration[6.0]
  def change
    create_table :ars do |t|
      t.string :name
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
