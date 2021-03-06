# frozen_string_literal: true

Rails.application.routes.draw do
  resources :connections, except: %i[edit]
  resources :my_attrs, except: %i[edit]
  resources :attrs
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/match' => 'match#index'
end
