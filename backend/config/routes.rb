Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :user
      mount_devise_token_auth_for 'User', at: 'auth'

      namespace :auth do
        resources :sessions, only: %i[index]
      end
    end
  end
end
