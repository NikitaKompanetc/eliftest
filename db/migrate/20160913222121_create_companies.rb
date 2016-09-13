class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cost1
      t.string :cost2

      t.timestamps null: false
    end
  end
end
