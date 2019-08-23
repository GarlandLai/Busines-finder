Rails.application.routes.draw do

  get "/restaurants/random" => 'restaurants#random'

  resources :restaurants do
    resources :reviews
  end
end
