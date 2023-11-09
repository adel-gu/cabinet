Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs
  authenticated do
    root 'docs#index', as: :authenticated_root
  end

  root 'welcome#index'
end
