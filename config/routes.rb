Rails.application.routes.draw do

  namespace :ad do
    get 'dashboard/index'
    root 'dashboard#index'
  end

  get 'page/index'
  root to: 'page#index'

end
