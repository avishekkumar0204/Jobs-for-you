class Company <  ApplicationRecord
    before_save :populate_mandatory_field
    validate :validate_companies_data

    def populate_mandatory_field
        company_id_max = Company.maximum(:company_id).to_i
        self[:company_id] = company_id_max + 1
    end

    def validate_companies_data
        Rails.logger.info "validate_companies_data-> #{self.inspect}"
        valid = true
        mandatory_fields = [:name]
        mandatory_fields.each do |field|
            if self[field].blank?
                valid = false
                errors.add(field, "can't be blank")
            end
        end
        valid
    end

    def self.get_all_companies
        all_companies = Company.all
    end
end