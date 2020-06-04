class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :status
      t.references :branch_office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
