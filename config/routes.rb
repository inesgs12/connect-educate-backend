Rails.application.routes.draw do
  resources :posts_skills
  resources :posts
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :messages
      resources :volunteers
    end 
  end
  devise_for :users
end
