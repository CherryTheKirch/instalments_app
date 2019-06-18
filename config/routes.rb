Rails.application.routes.draw do
  get 'dashboard/', to: 'dashboard#index'
  get '/login', to: 'login#index'
  post '/login/:email', to: 'login#check_login'
  root to: 'static_pages#index'
end
