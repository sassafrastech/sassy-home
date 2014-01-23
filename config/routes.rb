SassSite::Application.routes.draw do
  resources(:about)
  resources(:contact)
  resources(:home)
  resources(:our_work)
  resources(:services)
  root :to => 'home#index'

  match 'contact' => 'contact#index', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
