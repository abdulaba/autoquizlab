class TakeQuizzesController < ApplicationController
  before_action :set_quiz, only: [:new, :create, :show]
  before_action :authenticate_student!, only: [:new, :create]

  def create
    @take_quiz = @quiz.take_quizzes.new
    @take_quiz.student = current_student

    if @take_quiz.save
      redirect_to @quiz, notice: 'Has entrado al quiz exitosamente.'
    else
      render @quiz, notice: 'No has podido entrar al quiz.'
    end
  end

  def show
    @take_quiz = TakeQuiz.find(params[:id])
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
