Rails.application.routes.draw do
  get 'dashboard/', to: 'dashboard#index'
  get '/login', to: 'login#index'
  root to: 'static_pages#index'
end
