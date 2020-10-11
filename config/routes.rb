Rails.application.routes.draw do
  resources :links, except: :show
  devise_for :users
  # get 'page/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'page#index'

  get '/:username', to: 'page#share', as: :share
  patch '/username', to: 'links#username', as: :username
end
