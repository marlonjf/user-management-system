# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  def after_sign_in_path_for(user)
    return users_path if user.admin?

    user_path(user)
  end
end
