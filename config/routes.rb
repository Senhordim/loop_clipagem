Rails.application.routes.draw do

  devise_for :customers, skip: [:registrations]
  devise_for :admins, skip: [:registrations]

  namespace :ad do

    get 'dashboard/index'
    root 'dashboard#index'

    resources :customers, except: [:show]
    resources :admins, except: [:show]
    resources :vehicles
    resources :publications

  end

  namespace :clipping do

  end

  namespace :site do
    get 'page/index'
  end


  root to: 'site/page#index'

end
