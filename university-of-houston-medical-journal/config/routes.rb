Rails.application.routes.draw do
  resources :medical_students
  devise_for :users
  resources :sign_ins
  resources :join_nows
  resources :research_submissions
  resources :blogs do
    resources :comments
  end
  resources :abouts
  resources :specifics
  resources :specialties
  resources :articles
  resources :homes
  resources :users, only: [:show, :edit, :update]

  get 'home/index'
  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
