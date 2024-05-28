class Company <  ApplicationRecord
    before_save :validate_columns

    def validate_columns
        company_id_max = Company.maximum(:company_id).to_i
        self[:company_id] = company_id_max + 1
    end

    def self.get_all_companies
        all_companies = Company.all
    end
end