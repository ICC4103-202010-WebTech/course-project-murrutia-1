Rails.application.routes.draw do

  devise_for :users


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :organizations do
        resources :user_on_organizations
        resources :events do
          resources :user_on_events
          resources :date_votes
          resources :comments do
            resources :comment_replies
          end
        end
      end
      resources :users do
        resources :user_on_organizations
        resources :user_on_events
        resources :comments do
          resources :comment_replies
        end
        resources :user_on_events
        resources :date_votes
        resources :system_administrators
      end
    end
  end

  resources :comments, defaults: {format: :html} do
    resources :comment_replies, defaults: {format: :html}
  end
  resources :date_votes, defaults: {format: :html}
  resources :events, defaults: {format: :html}
  resources :organizations, defaults: {format: :html}
  resources :system_administrators, defaults: {format: :html}
  resources :users, defaults: {format: :html}
  resources :user_on_events, defaults: {format: :html}
  resources :user_on_organizations, defaults: {format: :html}

  get '/search' => 'pages#search', :as => 'search_page'
end
