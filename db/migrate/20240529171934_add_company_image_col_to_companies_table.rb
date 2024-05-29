class AddCompanyImageColToCompaniesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :companies, :company_image, :string
  end
end
