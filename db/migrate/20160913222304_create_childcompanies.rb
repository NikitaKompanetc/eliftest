class CreateChildcompanies < ActiveRecord::Migration
  def change
    create_table :childcompanies do |t|
      t.string :cost1
      t.string :cost2
      t.integer :company

      t.timestamps null: false
    end
  end
end
