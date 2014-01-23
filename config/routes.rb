SassSite::Application.routes.draw do
  resources(:about)
  resources(:contact)
  resources(:home)
  resources(:services)

  # this looks nicer
  resources(:our_work, :path => 'our-work')

  # this is for legacy link support
  resources(:our_work)

  root :to => 'home#index'

  match 'contact' => 'contact#index', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
