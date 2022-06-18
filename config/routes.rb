Rails.application.routes.draw do
  
  devise_for :users
  resources :job_applications do
    get '/page/:page', action: :index, on: :collection
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "job_applications#index"
end
