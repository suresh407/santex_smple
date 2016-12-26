Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home_photos
  resources :homes
  root :to => "homes#index"
end
