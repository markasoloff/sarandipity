Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  # get 'admin' => 'admin/posts#index'
      resources :courses, :users
    root to: 'client#home'
    get "/about" => "client#about"
    get "/classes" => "client#classes"
    get "/contact" => "client#contact"

    get "/courses" => "courses#index"
    get 'course/:id' => 'courses#show'

    post "course" => "courses#create"
    delete 'course/:id' => 'courses#destroy'

    post "/users" => "users#create"

    get "/welcome" => "welcome#show"


  # get "/classes/:id" => "courses#show", as: "course"
  
  # get "classes/new" => "courses#new", as: "new_course"

  # post "course" => "courses#create"

  # get "/list" => "courses#list"



  # get "/courses" => "course#courses"
  # post "/contact" => "course#contact"
  # patch 'course/:id' => 'course#update'

end
