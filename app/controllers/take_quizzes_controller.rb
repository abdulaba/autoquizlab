class TakeQuizzesController < ApplicationController
  before_action :set_quiz, only: [:new, :create, :show]
  before_action :authenticate_student!, only: [:new, :create]

  def new
    @take_quiz = TakeQuiz.new
  end

  def create
    @take_quiz = @quiz.take_quizzes.new(take_quiz_params)
    @take_quiz.student = current_student

    if @take_quiz.save
      score = calculate_score(@take_quiz)
      @take_quiz.update(result: score)

      redirect_to [@quiz, @take_quiz], notice: 'Has completado el examen.'
    else
      render :new
    end
  end

  def show
    @take_quiz = TakeQuiz.find(params[:id])
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end

  def take_quiz_params
    params.require(:take_quiz).permit(answers_attributes: [:question_id, :selected_option_id])
  end

  def calculate_score(take_quiz)
    correct_answers_count = 0

    take_quiz.answers.each do |answer|
      correct_answers_count += 1 if answer.question.correct_option_id == answer.selected_option_id
    end

    total_questions = @quiz.questions.count
    (correct_answers_count.to_f / total_questions * 10).round(2)
  end
end
