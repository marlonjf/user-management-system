Rails.application.routes.draw do
  devise_for :users, path: '/', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  authenticated :user do
    root to: "users#profile"
  end
end
