ActionController::Routing::Routes.draw do |map|
  
  map.resource :session
  
  map.resources :comments
  map.resources :watcheds
  map.resources :episodes, :has_many => :watcheds, :has_many => :comments, :member => { :add => :post, :watched => :put }
  map.resources :seasons, :member => { :addepisode => :put }, :has_many => :episodes
  map.resources :shows, :member => { :addseason => :put, :remove => :delete, :add => :put }, :has_many => :seasons
  map.resources :users, :collection => { :addshow => :get }, :has_many => :shows
  
  map.root :controller => "users"

  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
