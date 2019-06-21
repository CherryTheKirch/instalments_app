Rails.application.routes.draw do
  get '/registration', to: 'registration#index'
  post '/registration', to: 'registration#check_password_confirmation'
  get 'dashboard/', to: 'dashboard#index'
  get '/login', to: 'login#index'
  post '/login', to: 'login#check_login'
  root to: 'static_pages#index'
end
