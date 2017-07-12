Rails.application.routes.draw do


  get 'tickets/new'

  get 'tickets/create'

  get 'tickets/edit'

  get 'tickets/update'

  get 'tickets/show'

  get 'tickets/index'

  get 'messages/new'

  get 'messages/create'

  get 'messages/edit'

  get 'messages/update'

  get 'messages/show'

  get 'messages/destroy'

  get 'conversations/create'

  get 'conversations/show'

  get 'conversations/index'

  get 'conversations/destroy'

  get 'contacts/new'

  get 'contacts/create'

  get 'contacts/destroy'

  get 'workers/create'

  get 'workers/update'

  get 'workers/show'

  get 'workers/destroy'

  get 'sections/create'

  get 'sections/update'

  get 'sections/show'

  get 'sections/destroy'

  devise_for :users
  root to: "pages#home" # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
