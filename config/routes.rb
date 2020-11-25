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
  
  devise_for :users
  # Professor told me to move "devise_for :users" after the "resources :users, only: [:show, :edit, :update, :index]". But if I do, the "Too many redirects" error is produced. 
  # Found this on Github: https://github.com/heartcombo/devise/issues/367
  # "RegistrationsController does not allow you to access the new action when you
  # are signed in. If you are signed in and try to access it, it redirects you
  # back to the root_path. Which is going to redirect you again and again.
  
  # My advice is to create another controller which shows you the sign up form,
  # but sends you to the proper registrations controller."
  resources :users, only: [:show, :edit, :update, :index]


  root "users#show" # Changed "users#index" to "users#show" and it sent me to the profile page!
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
