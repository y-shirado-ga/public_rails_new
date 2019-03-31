Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root  to: 'ajax_test#top'
  root "welcome#index"
  post  'ajax_test/update', to: 'ajax_test#update', as: 'ajax_test_update'
  get "home", to: "home#index", as: "user_root"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
