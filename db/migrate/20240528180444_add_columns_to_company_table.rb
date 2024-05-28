class AddColumnsToCompanyTable < ActiveRecord::Migration[7.1]
  def change
    add_column :companies, :rating, :float
    add_column :companies, :head_quarter, :string
    add_column :companies, :founder, :string
    add_column :companies, :since, :integer
  end
end
