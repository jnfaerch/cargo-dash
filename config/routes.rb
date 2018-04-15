Rails.application.routes.draw do
  mount Dashing::Engine, at: Dashing.config.engine_path
  devise_for :users
  root to: 'dashing/dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
