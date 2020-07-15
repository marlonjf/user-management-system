Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      registrations: 'registrations',
      sessions: 'sessions',
      passwords: 'passwords',
    }

  devise_scope :user do
    authenticated :user do
      root to: 'users#current_user_home', as: :authenticated_root
      resources :users do
        post :create_user, on: :collection
        post :toggle_role, on: :member
      end
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
