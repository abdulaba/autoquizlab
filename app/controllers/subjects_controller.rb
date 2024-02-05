class SubjectsController < ApplicationController
  before_action :set_institution, only: [:new, :create, :edit, :update, :destroy, :index]
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  def index
    @subjects = @institution.subjects
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.institution_id = @institution.id
    if @subject.save
      redirect_to @institution, notice: 'La materia ha sido creada de manera exitosa.'
    else
      render :new
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to @institution, notice: 'La materia ha sido actualizada de manera exitosa.'
    else
      render :edit
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to @institution, notice: 'La materia ha sido eliminada de manera exitosa.'
  end

  private

  def set_institution
    @institution = Institution.find(params[:institution_id])
  end

  def subject_params
    params.require(:subject).permit(:name, :teacher_id)
  end
end
