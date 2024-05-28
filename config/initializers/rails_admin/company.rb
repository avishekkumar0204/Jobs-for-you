RailsAdmin.config do |config|
    config.model 'Company' do

      create do
        field :name do
          label "Company name"
        end
        field :rating
        field :head_quarter
        field :founder
        field :since
      end

      list do
        field :name
        field :rating
        field :head_quarter
        field :founder
        field :since
      end
  
      # Customize the edit view
      edit do
        field :name
        field :rating
        field :head_quarter
        field :founder
        field :since
      end
  
      # Customize the show view
      show do
        field :name 
        field :rating
        field :head_quarter
        field :founder
        field :since
      end
    end
  end
  