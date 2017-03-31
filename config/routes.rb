Rails.application.routes.draw do

  devise_for :admins

  namespace :ad do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :vehicles
  end

  namespace :site do
    get 'page/index'
  end


  root to: 'site/page#index'

end
