class SchoolClassesController < ApplicationController

  def index
    @allclasses = SchoolClass.all
  end

  def new
    @singleclass = SchoolClass.new
  end

  def create
    @singleclass = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@singleclass)
  end

  def show
    @singleclass = SchoolClass.find(params[:id])
  end

  def edit
    @singleclass = SchoolClass.find(params[:id])
  end

  def update
    @singleclass = SchoolClass.find(params[:id])
    @singleclass.update(params[:school_class])
    redirect_to school_class_path(@singleclass)
  end
end
