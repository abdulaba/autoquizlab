Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :students
  devise_for :teachers
  devise_for :institutions


  resources :institutions, only: [:new, :create, :show, :edit, :update, :destroy]
  root to: "pages#home"


  resources :institutions do
    resources :subjects, only: [:new, :create]
    # resources :teachers, only: [:new, :create]
    resources :students, only: [:new, :create]
  end



  # nesteado para rutas de take_quizzes de un quiz
  # el alumno no puede borrar, editar o un quiz
  resources :quizzes do
    resources :take_quizzes, only: [:new, :create]
    end

  # resources :teachers, only: [:new, :create, :show] do
  #   resources :quizzes
  # end

  resources :quizzes do
    resources :take_quizzes, only: [:new, :create]
  end

  resources :students do
    resources :student_subjects, only: [:new, :create]
  end

  resources :questions, only: [:index, :show]

  get 'quienes_somos', to: 'pages#quienes_somos'
  get 'preguntas_frecuentes', to: 'pages#preguntas_frecuentes'

end
