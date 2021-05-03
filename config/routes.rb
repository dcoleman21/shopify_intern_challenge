Rails.application.routes.draw do
  resources :photos
  # get "/photos", to: "photos#index"
  # get "/photos/new", to: "photos#new"
end
