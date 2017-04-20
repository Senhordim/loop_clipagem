Rails.application.routes.draw do

  devise_for :admins, skip: [:registrations]

  namespace :ad do
    get 'dashboard/index'
    root 'dashboard#index'
    resources :admins, except: [:show]
    resources :vehicles
    resources :publications
  end

  namespace :site do
    get 'page/index'
  end


  root to: 'site/page#index'

end
