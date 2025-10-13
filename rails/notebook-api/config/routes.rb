Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Contacts
  get "contacts", to: "contacts#index", as: :contacts_index
  get "contacts/:id", to: "contacts#show", as: :contacts_show
  post "contacts", to: "contacts#create", as: :contacts_create
  put "contacts/:id", to: "contacts#update", as: :contacts_update
  delete "contacts/:id", to: "contacts#destroy", as: :contacts_destroy
end
