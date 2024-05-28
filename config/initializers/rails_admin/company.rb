RailsAdmin.config do |config|
    config.model 'Company' do
      # Customize order and visibility of fields in the list view
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
  