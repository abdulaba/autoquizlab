Rails.application.routes.draw do
  # Devise routes for authentication
  devise_for :students
  devise_for :teachers
  devise_for :institutions

  # Root path of the application
  root to: "pages#home"

  # Routes for institutions and nested resources for subjects
  resources :institutions do
    resources :subjects, only: [:new, :create, :edit, :update, :show, :destroy]
  end

  # Routes for teachers and nested resources for quizzes
  resources :teachers, only: [:show] do
    resources :quizzes
  end

  # Routes for quizzes and nested resources for take_quizzes
  resources :quizzes do
    resources :take_quizzes, only: [:new, :create]
  end

  # Routes for students (assuming basic CRUD)
  resources :students

  # Routes for questions that are fetched from an external API
  resources :questions, only: [:index, :show]

  # ... other custom routes if needed ...
end
