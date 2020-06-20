class CreateProcedures < ActiveRecord::Migration[6.0]
  def change
    create_table :procedures do |t|
      t.integer :idEntry
      t.string :description

      t.timestamps
    end
  end
end
