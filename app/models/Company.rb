class Company <  ApplicationRecord

    has_one_attached :company_image
    before_save :populate_mandatory_field
    validate :validate_companies_data
    scope :select_columns, -> {select(:name, :rating, :head_quarter, :founder, :since)}

    def populate_mandatory_field
        company_id_max = Company.maximum(:company_id).to_i
        self[:company_id] = company_id_max + 1

        self[:company_url] = "company/" + self[:name].downcase.gsub(" ", "-")
    end

    def validate_companies_data
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

    def self.get_company_details(company_url)
        company = Company.select_columns.find_by(company_url: company_url)
    end
end