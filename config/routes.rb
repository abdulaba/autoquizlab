Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  devise_for :institutions
  root to: "pages#home"

  # Esto era previo a crear subjects
  # resources :institutions, only: [:new, :create, :show, :edit, :update, :destroy]

  resources :institutions do
    resources :subjects, only: [:new, :create, :show, :edit, :update, :destroy]
  end




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
