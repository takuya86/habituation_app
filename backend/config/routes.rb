Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        sessions: "api/v1/auth/sessions",
        registrations: 'api/v1/auth/registrations',
        omniauth_callbacks: "api/v1/auth/omniauth_callbacks",
        confirmations: "api/v1/auth/confirmations",
        passwords: "api/v1/auth/passwords",
      }
    end
  end
end
