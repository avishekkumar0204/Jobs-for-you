class CreateCompaniesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.integer :company_id, null: false
      t.string  :name,       null: false
      t.timestamps
    end
  end
end
