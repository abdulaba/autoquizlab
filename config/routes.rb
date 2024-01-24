Rails.application.routes.draw do
  devise_for :independents
  get 'students/index'
  devise_for :students
  devise_for :teachers
  devise_for :institutions
  root to: "pages#home"
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


# devise_for :users, controllers: {
#   sessions: 'users/sessions',
#   registrations: 'users/registrations'
# }
