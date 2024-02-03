class TeachersController < ApplicationController

  def index
    
  end

  def show
    @teacher = Teacher.find(params[:id])
    @subjects = Subject.where(teacher_id: @teacher.id)
    @students = Student.where(institution_id: params[:id])

  end

  def new
    @institution = Institution.find(params[:institution_id])
    @teacher = Teacher.new
  end


  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.institution_id = params[:institution_id]
    if @teacher.save
      redirect_to @teacher, notice: 'Profesor se ha creado de manera exitosa.'
    else
      render :new
    end
  end

  def edit
    @teacher = current_teacher
  end

  def update
    @teacher = current_teacher
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'Estudiante ha sido actualizado de manera exitosa.'
    else
      render :edit
    end
  end



  private

  def teacher_params
    params.require(:teacher).permit(:name, :email, :password)
  end
end
