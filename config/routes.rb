Rails.application.routes.draw do

  root to: "pages#home"

  devise_for :users

  resources :workers, except: [:new, :edit, :index]

  resources :sections, except: [:create, :new, :edit, :index]

  resources :tickets, except: :destroy

  resources :contacts, only: [:new, :create, :destroy]

  resources :conversations, except: [:new, :edit, :update] do
    resources :messages, except: :index
  end

end
