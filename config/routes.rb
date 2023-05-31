Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'login#new'
  post 'login', to: 'login#login'
  
  # Homepage
  get '/homepage', to: 'homepage#homepage', as: 'homepage'

  
  
  # View Page
  get 'sets_page', to: 'record_sets#index', as: 'set_record'

  # Create
  get 'v1/record_sets_create', to: 'record_sets_create#new', as: 'create_sets_record'
  post 'v1/record_sets_create', to: 'record_sets_create#create'

  # Delete
  delete 'delete_record/:id', to: 'record_sets_delete#delete_record', as: 'delete_record'

  # Update 
  get 'edit_record/:id', to: 'record_sets_update#edit_record', as: 'edit_record'
  patch 'update_record/:id', to: 'record_sets_update#update_record', as: 'update_record'
=begin
  get '/login', to: 'login#index'
  post '/login', to: 'login#login'

  get '/logout', to: 'logout#logout', as: 'logout'

  get '/homepage', to: 'homepage#index', as: 'homepage'

  get '/times_record_create', to: 'times_record_create#new', as: 'create_times_record'
  post '/times_record_create', to: 'times_record_create#create'


  get '/times_record', to: 'times_record_view#index', as: 'times_record'
  delete '/times_record/:id', to: 'times_record_delete#delete', as: 'delete_times_record'
  get '/times_record/:id/edit', to: 'times_record_update#edit', as: 'edit_times_record'
  patch '/times_record/:id', to: 'times_record_update#update', as: 'update_times_record'
=end
  mount EndpointResource => '/'
  post "view", to: "view_user_record#view"
  #get "home", to: "view_user_record#index"

  #####
  root to: 'register_account#index'
  post '/submit' => 'register_account#submit'
  #####
  get "create_account", to: "register_account#index"

  get "home", to: "register_account#show"
  get "personal_profile", to: "register_account#personal_profile"

  get "update", to: "register_account#update"
  post "update_action", to: "register_account#update_action"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'login#index'
  post '/login', to: 'login#login'
  
  get '/logout', to: 'logout#logout', as: 'logout'
  
  get '/homepage', to: 'homepage#index', as: 'homepage'
  post "view", to: "view_user_record#view"
  
  get '/times_record_create', to: 'times_record_create#new', as: 'create_times_record'
  post '/times_record_create', to: 'times_record_create#create'
  
  
  get '/times_record', to: 'times_record_view#index', as: 'times_record'
  delete '/times_record/:id', to: 'times_record_delete#delete', as: 'delete_times_record'
  get '/times_record/:id/edit', to: 'times_record_update#edit', as: 'edit_times_record'
  patch '/times_record/:id', to: 'times_record_update#update', as: 'update_times_record'
  


end

