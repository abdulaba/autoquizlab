class TakeQuizzesController < ApplicationController
  before_action :set_quiz, only: [:new, :create]
  before_action :authenticate_student!, only: [:new, :create]

  def new
    @take_quiz = TakeQuiz.new
  end

  def create

    @take_quiz = TakeQuiz.new(take_quiz_params)
    @take_quiz.quiz_id = params[:quiz_id]
    @take_quiz.student_id = current_student.id # assuming you have a current_student method

    if @take_quiz.save
      redirect_to @take_quiz, notice: 'Haz tomado el examen de manera exitosa.'

    @take_quiz = @quiz.take_quizzes.new(take_quiz_params)
    @take_quiz.student = current_student

    if @take_quiz.save
      score = calculate_score(@take_quiz)
      @take_quiz.update(result: score)

      redirect_to [@quiz, @take_quiz], notice: 'Has completado el quiz.'
    else
      render :new
    end
  end

  def show
    @take_quiz = TakeQuiz.find(params[:id])
    # Assuming @quiz is already set by set_quiz before_action
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end

  def take_quiz_params

    params.require(:take_quiz).permit(:result)

    params.require(:take_quiz).permit(:quiz_id, answers_attributes: [:question_id, :selected_option_id])
  end

  def calculate_score(take_quiz)
    correct_answers_count = 0

    # Assuming each answer submitted has a question_id and selected_option_id
    take_quiz_params[:answers_attributes].each do |answer_attribute|
      question = Question.find(answer_attribute[:question_id])
      correct_answers_count += 1 if question.correct_option_id == answer_attribute[:selected_option_id].to_i
    end

    total_questions = @quiz.questions.count
    (correct_answers_count.to_f / total_questions * 10).round(2)
  end
end
