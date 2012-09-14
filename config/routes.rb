SassSite::Application.routes.draw do
  resources(:about)
  resources(:contact)
  resources(:home)
  resources(:our_work)
  resources(:services)
  root :to => 'home#index'
end
