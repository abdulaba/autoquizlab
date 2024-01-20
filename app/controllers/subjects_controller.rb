class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:new, :create, :edit, :update, :destroy]

  def new
    @subject = Subject.new
  end

  def create
    @subject = @teacher.subjects.new(subject_params)
    if @subject.save
      redirect_to teacher_path(@teacher), notice: 'Subject was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to teacher_path(@teacher), notice: 'Subject was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    redirect_to teacher_path(@teacher), notice: 'Subject was successfully destroyed.'
  end

  private

  def set_subject
    @subject = Subject.find(params[:id])
  end

  def set_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end

  def subject_params
    params.require(:subject).permit(:name, :teacher_id)
  end
end
