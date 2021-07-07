class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(params[:id])
    # render :show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save 
    redirect_to student_path(@student)
  end

  # def activate
  #   @student = Student.find(params[:id])
  #   if @student.active == false
  #     @student.update(active: true)
  #   else
  #     @student.update(active: false)
  #   end
  #   redirect_to student_path(@student)
  # end
  

  private

    def set_student
      @student = Student.find(params[:id])
    end
end