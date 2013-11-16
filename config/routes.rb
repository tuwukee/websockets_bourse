WebsocketsBourse::Application.routes.draw do
  devise_for :users
  resources :items
  resources :users, :only => [:index]
  resources :tidings, :only => :create

  get "static_pages/about", :as => :about

  get "application/open_bourse", :as => :open_bourse
  get "application/close_bourse", :as => :close_bourse

  root :to => "items#index"
  resources :rooms
  match '/party/:id', :to => "rooms#party", :as => :party, :via => :get
end