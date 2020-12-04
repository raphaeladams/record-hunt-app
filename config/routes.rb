# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'records/index'
  # get 'records/show'
  # post 'records/create'
  # put 'records/update'
  # delete 'records/destroy'
  resources :records, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/graphql", to: "graphql#execute"
end
