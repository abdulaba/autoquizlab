class StudentsController < ApplicationController
  before_action :authenticate_student!, except: :home
  
  def index
    @students = Student.all  

  end

  def show
    @student = current_student
    @institution = Institution.find(current_student.institution_id)
  end

  def new
    @student = Student.new
  end 

  def create
    @student = Student.new(student_params)
    if @student.save

      redirect_to @student, notice: 'El estudiante se ha creado de manera exitosa.'
    else
      render :new
    end
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student
    if @student.update(student_params)
      redirect_to @student, notice: 'Estudiante ha sido actualizado de manera exitosa.'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_url, notice: 'Estudiante ha sido eliminado de manera exitosa.'
  end


  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end

end
