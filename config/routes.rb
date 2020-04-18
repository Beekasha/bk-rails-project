Rails.application.routes.draw do
  resources :documents
  resources :parents
  resources :comments
  resources :klasses
  resources :students
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
