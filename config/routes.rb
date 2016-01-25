SassSite::Application.routes.draw do
  resources(:about)
  resources(:contact)
  resources(:home)
  resources(:jobs)
  resources(:our_work, :path => 'our-work')
  resources(:services)
  resources(:team)

  root :to => 'home#index'

  # Markdown Documents
  get '/bylaws', to: 'markdown#bylaws'
  get '/code-of-conduct', to: 'markdown#code_of_conduct'

  # legacy link support
  get "/our_work" => redirect("/our-work")

  match 'contact' => 'contact#index', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
