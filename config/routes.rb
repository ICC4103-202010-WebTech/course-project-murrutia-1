Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
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
        resources :mail_boxes
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

  resources :terms_of_service, defaults: {format: :html}
  resources :acceptable_use_policy, defaults: {format: :html}

  resources :date_votes, defaults: {format: :html}
  resources :events, defaults: {format: :html}
  resources :organizations, defaults: {format: :html}
  resources :system_administrators, defaults: {format: :html}
  resources :users, defaults: {format: :html}
  resources :user_on_events, defaults: {format: :html}
  resources :user_on_organizations, defaults: {format: :html}
  resources :mail_boxes, defaults: {format: :html}
  resources :admins, defaults: {format: :html}
  resources :searches

  resources :reports, defaults: {format: :html}

end
