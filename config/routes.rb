Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  devise_for :institutions
  root to: "pages#home"

  resources :institutions, only: [:new, :create, :show, :edit, :update, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
