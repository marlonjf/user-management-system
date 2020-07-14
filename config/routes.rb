Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      registrations: 'registrations',
      sessions: 'sessions',
      passwords: 'passwords',
    }

  devise_scope :user do
    authenticated :user do
      resources :users, only: %i[show edit update destroy]
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
