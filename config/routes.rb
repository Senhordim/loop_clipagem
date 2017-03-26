Rails.application.routes.draw do

  devise_for :admins

  namespace :ad do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :vehicles
  end

  get 'page/index'
  root to: 'page#index'

end
