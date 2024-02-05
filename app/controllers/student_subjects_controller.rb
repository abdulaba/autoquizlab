class StudentSubjectsController < ApplicationController
      def index
        @studentsubject = StudentSubject.all      
      end
    
      def show
        @studentsubject = StudentSubject.find(params[:id]) 
      end
    
      def new
        @student = Student.find(params[:student_id])
        @subjects = Subject.where(institution_id: @student.institution.id)
        @studentsubject = StudentSubject.new
      end 
    
      def create
        @studentsubject = StudentSubject.new(student_subject_params)
        @studentsubject.student_id = (params[:student_id])
        @student = Student.find(params[:student_id])
        if @studentsubject.save
    
          redirect_to @student.institution
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @studentsubject = current_student
      end
    
      def update
        @studentsubject = current_student
        if @studentsubject.update(student_subject_params)
          redirect_to @studentsubject
        else
          render :edit
        end
      end
    
      def destroy
        @studentsubject.destroy
        redirect_to students_url
      end
    
    
      private
    
      def student_subject_params
        params.require(:student_subject).permit(:subject_id)
      end
end
