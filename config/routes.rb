Rails.application.routes.draw do
  resources :valleys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dinosaurs#index"

  get "dinosaurs" => "dinosaurs#index"
  get "dinosaurs/new" => "dinosaurs#new", as: :new_dinosaur
  get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur
  post "dinosaurs" => "dinosaurs#create"

  get "dinosaurs/:id/edit" => "dinosaurs#edit", as: :edit_dinosaur

  patch "dinosaurs/:id" => "dinosaurs#update"
  delete "dinosaurs/:id" => "dinosaurs#destroy"
end

#recognize URL path from browser and redirect it to the proper controller class & method (e.g. index)

# or use resources :dinosaurs to replace the above commands
