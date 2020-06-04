class CreateBranchOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :branch_offices do |t|
      t.string :name
      t.string :address
      t.string :telephone

      t.timestamps
    end
  end
end
