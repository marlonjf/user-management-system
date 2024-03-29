Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      registrations: 'registrations',
      sessions: 'sessions',
      passwords: 'passwords',
    }

  devise_scope :user do
    authenticated :user do
      resources :users do
        collection do
          post :create_user
          post :import
          get :import_page
        end
        post :toggle_role, on: :member
      end
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
