# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/inventory_items', to: 'inventory_items#index'
  resources :inventory_items
  resources :locations
end
