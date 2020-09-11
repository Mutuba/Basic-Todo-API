Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'signup', to: 'users#create'
      post 'auth/login', to: 'authentication#authenticate'
      resources :todos do
        resources :items
      end
    end
  end
end