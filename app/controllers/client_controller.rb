class ClientController < ApplicationController

    def home
      render '/client/home.html.erb'
    end

    def about
      render '/client/about.html.erb'
    end

    def classes
      @course = Course.all
      render '/client/classes.html.erb'
    end

    def contact
      render '/client/contact.html.erb'
    end

    private
   
    def course_params
      params.require(:course).permit(:name, :description, :date, :time)
    end

end
