SassSite::Application.routes.draw do
  resources(:about)
  resources(:contact)
  resources(:home)
  resources(:jobs)
  resources(:services)
  resources(:team)
  resources(:work)

  root :to => 'home#index'

  # legacy link support
  get "/our-work" => redirect("/work")
  get "/our_work" => redirect("/work")

  match 'contact' => 'contact#index', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
