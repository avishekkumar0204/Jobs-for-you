class HomeController < ApplicationController
    def index
        @all_companies = Company.get_all_companies
    end
end