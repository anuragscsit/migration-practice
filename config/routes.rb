Rails.application.routes.draw do
  resources :teachers
  resources :subjects
  resources :desiplines
  resources :courses
  resources :branches
  resources :books
  resources :semesters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
