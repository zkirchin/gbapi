Rails.application.routes.draw do
  resources :aliases
  resources :divinities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      # resources go here
      resources :books
      resources :divinities
      resources :aliases
    end
  end
end
