Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  devise_for :institutions

  root to: "pages#home"

  resources :institutions do
    resources :subjects, only: [:new, :create, :edit, :update, :show, :destroy]
  end

  resources :teachers, only: [:show] do
    resources :quizzes
  end

  resources :quizzes do
    resources :take_quizzes, only: [:new, :create]
  end

  resources :students

  resources :questions, only: [:index, :show]

end
