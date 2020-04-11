Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :messages
      resources :volunteers
    end
  end

  devise_for :volunteers,
            defaults: { format: :json},
            controllers: {
              sessions: 'api/v1/sessions',
              registrations: 'api/v1/registrations'
             }

  devise_for :parents,
             defaults: { format: :json},
             controllers: {
               sessions: 'api/v1/sessions',
               registrations: 'api/v1/registrations'
              }
end
