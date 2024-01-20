class TakeQuizzesController < ApplicationController
  before_action :set_quiz, only: [:new, :create]

  def new
    @take_quiz = TakeQuiz.new
  end

  def create
    @take_quiz = TakeQuiz.new(take_quiz_params)
    @take_quiz.quiz_id = params[:quiz_id]
    @take_quiz.student_id = current_student.id # assuming you have a current_student method

    if @take_quiz.save
      redirect_to @take_quiz, notice: 'Haz tomado el examen de manera exitosa.'
    else
      render :new
    end
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end

  def take_quiz_params
    params.require(:take_quiz).permit(:result)
  end
end
