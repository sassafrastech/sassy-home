SassSite::Application.routes.draw do
  resources(:about, only: :index)
  resources(:contact, only: :create)
  resources(:home, only: :index)
  resources(:jobs, only: :index)
  resources(:our_work, only: :index, path: "our-work")
  resources(:services, only: :index)
  resources(:team, only: :index)

  root to: "home#index"

  # Markdown Documents
  # get "/bylaws", controller: :markdown, to: "markdown#bylaws", as: "bylaws"
  # get "/code-of-conduct", controller: :markdown, to: "markdown#code_of_conduct", as: "code_of_conduct"

  # Documents
  get "/bylaws", controller: :documents, to: "documents#bylaws", as: "bylaws"
  get "/code-of-conduct", controller: :markdown, to: "documents#code_of_conduct", as: "code_of_conduct"

  get "/jobs/project-planner", controller: :jobs, to: 'jobs#project_planner', as: "project_planner"
  get "/jobs/rails-developer", controller: :jobs, to: 'jobs#rails_developer', as: "rails_developer"

  # legacy link support
  get "/our_work" => redirect("/our-work")

  get "contact" => "contact#index", :as => "contact"
end
