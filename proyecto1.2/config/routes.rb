Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments
      end
    end
  end
  resources :profiles
  resources :organizations
  resources :users
  resource :events do
    resources :organizations
    resources :comments
  end
  resources :inboxes do
    resources :messages, shallow: true
  end

  resources :users, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
  resources :events, defaults: { format: :html}
  resources :inboxes, defaults: { format: :html}
  resources :messages, defaults: { format: :html}
  resources :organizations, defaults: { format: :html}

end
