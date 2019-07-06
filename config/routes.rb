Rails.application.routes.draw do
  get 'instalments/create'
  get 'instalments/destroy'
  get 'instalments/edit'
  get '/registration', to: 'registration#index'
  post '/registration', to: 'registration#check_password_confirmation'
  get 'dashboard/', to: 'dashboard#index'
  get '/login', to: 'login#index'
  post '/login', to: 'login#check_login'
  root to: 'static_pages#index'
end
