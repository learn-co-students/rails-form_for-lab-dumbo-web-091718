class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(students_params(:first_name, :last_name))
    # @schoolclass.title = params[:title]
    # @schoolclass.room_number = params[:room_number]
    @student.save
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(students_params(:first_name, :last_name))
    redirect_to@student
  end

  private

  def students_params(*args)
    params.require(:student).permit(*args)
  end
end
