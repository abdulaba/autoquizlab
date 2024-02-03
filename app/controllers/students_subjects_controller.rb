class StudentsSubjectsController < ApplicationController
      def index
        @studentsubject = StudentSubject.all      
      end
    
      def show
        @studentsubject = StudentSubject.find(params[:id]) 
      end
    
      def new
        @studentsubject = StudentSubject.new
      end 
    
      def create
        @studentsubject = StudentSubject.new(student_subject_params)
        if @studentsubject.save
    
          redirect_to @studentsubject
        else
          render :new
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
        params.require(:studentsubject).permit(:student_id, :subject_id)
      end
end
