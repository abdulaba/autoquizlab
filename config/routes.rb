Rails.application.routes.draw do
  resources :teachers
  devise_for :students
  devise_for :teachers
  devise_for :institutions
  root to: "pages#home"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
