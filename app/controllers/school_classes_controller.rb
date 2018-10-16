class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(school_class_params(:title, :room_number))
    # @schoolclass.title = params[:title]
    # @schoolclass.room_number = params[:room_number]
    @schoolclass.save
    redirect_to @schoolclass
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(school_class_params(:title, :room_number))
    redirect_to@schoolclass
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
