Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  devise_for :institutions


  resources :institutions, only: [:new, :create, :show, :edit, :update, :destroy]
  root to: "pages#home"


  resources :institutions do
    resources :subjects, only: [:new, :create, :edit, :update, :show, :destroy]
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

  resources :teachers, only: [:show] do
    resources :quizzes
  end

  resources :quizzes do
    resources :take_quizzes, only: [:new, :create]
  end

  resources :students
  resources :questions, only: [:index, :show]

  get 'quienes_somos', to: 'pages#quienes_somos'
  get 'preguntas_frecuentes', to: 'pages#preguntas_frecuentes'

end
