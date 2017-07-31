Rails.application.routes.draw do

  root to: "pages#home"

  devise_for :users

  resources :workers, only:  [:edit, :update, :show]

  resources :sections, only: [:show]

  resources :tickets, except: :destroy

  resources :contacts, only: [:new, :create, :destroy]

  resources :conversations, only: [:index, :destroy]

  resources :conversations, only: [:show] do
    resources :messages, except: :index
  end

end
