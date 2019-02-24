Rails.application.routes.draw do
    
  root to: "restaurants#index"
  resources :restaurants do
  	resources :tables do
  	  resources :bookings
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
