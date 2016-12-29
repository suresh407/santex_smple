Rails.application.routes.draw do
  devise_for :users
 #get 'home' => 'pages#home' 
# match "pages/:id", to: "homepage#home", as: "home_page"
# get 'search' => 'pages#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home_photos
  resources :homes
#  resources  :contact_pages, :only => [:create , :index]
  resources :pages , :only => [:new, :create]
   # get 'single_wide'
#    get 'singe_wide' => 'pages#single_wide'
#  match "/pages/single_wide " => "pages#single_wide", :as => 'single_wide'     
  
  get 'pages/single_wide' => 'pages#single_wide', :as => 'single_wide'
  get 'pages/double_wide' => 'pages#double_wide', :as => 'double_wide'
  get 'pages/triple_wide' => 'pages#triple_wide', :as => 'triple_wide'
  get 'pages/other' => 'pages#other', :as => 'other'
  get 'pages/hotdeals' => 'pages#hotdeals', :as => 'hotdeals'
  root :to => "homes#index"
  get 'contact_pages' => 'contact_pages#new', :as => 'contact_pages'
  post 'contact_pages' => 'contact_pages#create'
#  post 'contact' => 'contact_pages#create'
#  get 'singe_wide', to: 'pages#single_wide'
end
