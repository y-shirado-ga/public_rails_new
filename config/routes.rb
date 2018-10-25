Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root  to: 'ajax_test#top'
  root "welcome#index"
  post  'ajax_test/update', to: 'ajax_test#update', as: 'ajax_test_update'
end
