Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/homePage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'welcome#homePage'


  resources :welcome do


   get 'homePage'
  end
  end
