WebsocketsBourse::Application.routes.draw do
  devise_for :users
  resources :items

  get "static_pages/about", :as => :about
  put "items/:id/purchase", :to => "items#purchase", :as => :items_purchase
  root :to => "items#index"
end