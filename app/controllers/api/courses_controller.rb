class Api::CoursesController < ApplicationController  

  def index
    render 'api/courses/index.html.erb'
  end

  def new
    render 'api/courses/_form.html.erb'
  end

  def create

  end

  def destroy

  end


  def list
    @courses = Course.all
    render 'api/courses/list.html.erb'
  end

  def about
    render 'api/courses/about.html.erb'
  end

  def classes
    render 'api/courses/classes.html.erb'
  end

  def contact
    render 'api/courses/contact.html.erb'
  end

end