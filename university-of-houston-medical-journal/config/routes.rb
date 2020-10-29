Rails.application.routes.draw do
  resources :join_nows
  resources :research_submissions
  resources :blogs
  resources :abouts
  resources :specifics
  resources :specialties
  resources :articles
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
