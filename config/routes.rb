Rails.application.routes.draw do
  resources :f_dzakirs
  resources :f_dpetras
  resources :f_droberts
  resources :f_develyns
  resources :f_dcarries
  resources :f_dowais
  resources :f_djosephs
  resources :f_dalexis
  resources :f_dhalles
  resources :f_dmikaels
  resources :medical_students
  
  resources :users, only: [:show, :edit, :update, :index]
    devise_for :users

  # root "users#index"
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
  

  get 'home/index'
  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
