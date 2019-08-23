Rails.application.routes.draw do

  concern :api_base do
    get "/restaurants/random" => 'restaurants#random'
    resources :restaurants do
      resources :reviews
    end
  end

  namespace :v1 do
    concerns :api_base
  end
end
