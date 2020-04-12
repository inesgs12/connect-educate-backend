Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tasks
      resources :messages
      resources :volunteers
      resources :languages
      resources :skills
    end
  end

  devise_for :users,
            defaults: { format: :json},
            controllers: {
              sessions: 'api/v1/sessions',
             }
  devise_for :volunteers,
            defaults: { format: :json},
            controllers: {
              registrations: 'api/v1/registrations'
             }

  devise_for :parents,
             defaults: { format: :json},
             controllers: {
               registrations: 'api/v1/registrations'
              }
end
