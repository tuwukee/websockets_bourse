WebsocketsBourse::Application.routes.draw do
  devise_for :users
  resources :items
  resources :tidings, :only => :create

  get "static_pages/about", :as => :about
  root :to => "items#index"
end