class AddCompaniesTable < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.integer "company_id", null: false
      t.string "name", null: false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.float "rating"
      t.string "head_quarter"
      t.string "founder"
      t.integer "since"
    end
  end
end
