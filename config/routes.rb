Rails.application.routes.draw do
  resources :units
  resources :students
  resources :courses
  resources :course_units
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
