Rails.application.routes.draw do

  #JOb self serve route
  mount RailsAdmin::Engine => '/job-self-serve', as: 'rails_admin'

  root "home#index"

  get "/company/:name", action: :index, controller: :company

end
