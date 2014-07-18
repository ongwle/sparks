Rails.application.routes.draw do  

  get 'page/aboutus', to: 'abouts#show', as: :aboutus

  resources :pages

  resources :abouts, only: [:show, :index]
  resources :projects, only: [:show, :index]  
  resources :project_categories, only: [:show, :index]
  resources :project_galleries, only: [:show, :index]
  resources :home_page_banners, only: [:show, :index]
  resources :banners, only: [:show, :index]
  resources :homepages, only: [:show, :index]
  resources :testimonials, only: [:show, :index]
  resources :subservices, only: [:show, :index]
  resources :trainers, only: [:show, :index]
  resources :services, only: [:show, :index]


  root to: 'homepages#index'
  devise_for :users
  resources :users


end
