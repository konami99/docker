Rails.application.routes.draw do
  resources :users
  get 'welcome/index'
  get 'welcome/sidekiq'
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
