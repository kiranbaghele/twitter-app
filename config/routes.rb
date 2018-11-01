Rails.application.routes.draw do
  get 'dashboards/home'
  get 'dashboards/index'
  post 'dashboards/search_result'
  root "dashboards#home"
  resources :dashboards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
