class RenameArToArs < ActiveRecord::Migration[6.0]
  def change
    rename_table :ar, :ars
  end
end
