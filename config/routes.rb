Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/pages/tour', to: 'pages#tour'
  get '/pages/about', to: 'pages#about'
  get '/pages/faq', to: 'pages#faq'
  get '/pages/contact_us', to: 'pages#contact_us'

  resources :investors, only: [:index, :show]
  resource :account, only: [:show, :edit, :update]
  resource :portfolio, only: [:show]
  resources :portfolio_trackers, only: [:create, :new] do
    resources :operations, only: [:create]
  end
end
