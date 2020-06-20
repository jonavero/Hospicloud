class CreateEntryMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_medicines do |t|
      t.integer :idMedicine
      t.integer :idEntry
      t.integer :amount

      t.timestamps
    end
  end
end
