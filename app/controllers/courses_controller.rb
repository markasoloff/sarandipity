class CoursesController < ApplicationController  

  def home
    render '/courses/home.html.erb'
  end

  def index
    @courses = Course.all
    render '/courses/index.html.erb'
  end

  def show
    @course = Course.find(params[:id]) 
  end

  def new
    @course = Course.new
    render '/courses/_form.html.erb'
  end

  def create
      @course = Course.new(course_params)

      if @course.save
          redirect_to course_path(@course), alert: "Class created successfully."
      else
          redirect_to new_course_path, alert: "Error creating user."
      end
  end

  def destroy
    Course.find(params[:id]).destroy
    alert[:success] = "Course successfully deleted"
    redirect_to courses_path
  end


  # def list
  #   @courses = Course.all
  #   render '/courses/list.html.erb'
  # end

  def about
    render '/courses/about.html.erb'
  end

  def classes
    @course = Course.all
    render '/courses/classes.html.erb'
  end

  def contact
    render '/courses/contact.html.erb'
  end

  private
 
  def course_params
    params.require(:course).permit(:name, :description, :date, :time)
  end


end