Rails.application.routes.draw do
  
  get 'app/test'
  resources :doctors
  resources :appointments
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
