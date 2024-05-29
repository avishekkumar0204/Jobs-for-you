class CompanyController < ApplicationController
    def index
        company_url = request.path[1..]
        @company_details = Company.get_company_details(company_url)
    end
end