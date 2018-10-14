class SchoolClassesController<ApplicationController
  def index
    @SchoolClasses=SchoolClass.all
  end
  def new
      @SchoolClass=SchoolClass.new
  end

  def create
  @school_class = SchoolClass.new(school_class_params(:title, :room_number))
  @school_class.save
  redirect_to @school_class
end

  def show
    @SchoolClass=SchoolClass.find(params[:id])
  end

  def edit
    @SchoolClass=SchoolClass.find(params[:id])
  end

  def update
    @schoolclass= SchoolClass.find(params[:id])
    @schoolclass.update(params[:school_class])
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end
  private

   def school_class_params(*args)
     params.require(:school_class).permit(*args)
   end

end
