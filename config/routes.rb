Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  # get 'admin' => 'admin/posts#index'

  namespace :api do
    root "/api/courses#index"
    get "/about" => "/api/courses#about"
    get "/classes" => "/api/courses#classes"
    get "/contact" => "/api/courses#contact"
    get "/course/new" => "/api/courses#new"
    post "/courses" => "/api/courses#create"


    post "/users" => "users#create"
  
  end

  get "/welcome" => "welcome#show"

 


  

  # get "/classes/:id" => "courses#show", as: "course"
  
  # get "classes/new" => "courses#new", as: "new_course"

  # post "course" => "courses#create"

  # get "/list" => "courses#list"



  # get "/courses" => "course#courses"
  # post "/contact" => "course#contact"
  # patch 'course/:id' => 'course#update'
  # delete 'course/:id' => 'course#destroy'

end
