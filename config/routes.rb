Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      # resources go here
      resources :books
      resources :divinities
      resources :aliases
      resources :regions
      resources :characters
      resources :organizations
      resources :city_states
      resources :points_of_interest
      resources :book_points_of_interest
      resources :book_organizations
      resources :book_city_states
      resources :book_characters
    end
  end
end
