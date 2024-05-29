class UpdateCompanyUrlToCompanyTable < ActiveRecord::Migration[7.1]
  def change
    companies = Company.all
    companies.each do |company|
      url = company.name.downcase.gsub(" ", "-")
      url = "company/" + url
      company.update!(company_url: url)
    end
  end
end
