Rails.application.routes.draw do
  # get 'dashboards/home'
  root "dashboards#home"
  resources :dashboards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
