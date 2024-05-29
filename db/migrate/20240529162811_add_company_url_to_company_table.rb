class AddCompanyUrlToCompanyTable < ActiveRecord::Migration[7.1]
  def change
    add_column :companies, :company_url, :string
  end
end
