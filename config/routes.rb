Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  devise_for :institutions
  root to: "pages#home"

  resources :institutions, only: [:new, :create, :show, :edit, :update, :destroy]

  resources :institutions do
    resources :subjects, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  # nesteado para quizzes de un teacher
  resources :teachers do
    resources :quizzes
  end

  # nesteado para rutas de take_quizzes de un quiz
  # el alumno no puede borrar, editar o un quiz
  resources :quizzes do
    resources :take_quizzes, only: [:new, :create]
    end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
