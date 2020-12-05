# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  root 'shops#index'
  # get 'records/show'
  # post 'records/create'
  # put 'records/update'
  # delete 'records/destroy'
  #resources :records, only: [:index, :show, :create, :update, :destroy]
  
  resources :shops, only: [:index, :show, :create, :update, :destroy] do
    # member do
    #   #get :records
    #   # resources :records, only: [:index, :show, :create, :update, :destroy]
    # end
    resources :records, only: [:index, :show, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/graphql", to: "graphql#execute"
end
