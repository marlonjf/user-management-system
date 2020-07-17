# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :user, only: %i[show edit update destroy]
  before_action :authenticate_admin, only: %i[index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create_user
    user = User.new(user_params)

    if user.save
      redirect_to path_flow, notice: 'User was successfully created.'
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
    redirect_to path_flow, notice: 'Access denied.' if current_user != @user
  end

  def import_page; end

  def import
    service = ImportCsvService.new(csv_data: file_params[:csv])
    service.import
    notice = 'Imported successfully'
  rescue InvalidSpreadsheet
    notice = 'Invalid spreadsheet'
  ensure
    redirect_to path_flow, notice: notice
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to path_flow, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def toggle_role
    user = User.find(params[:id])
    user.admin? ? user.basic! : user.admin!
    redirect_to path_flow, notice: 'User was successfully updated.'
  end

  def destroy
    user = User.find(params[:id])
    msg = if user.destroy
            'User deleted'
          else
            'Error'
          end
    redirect_to path_flow, notice: msg
  end

  private

  def user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :avatar,
      :name,
      :email,
      :password,
      :password_confirmation,
      :role,
    )
  end

  def path_flow
    return users_path if current_user.admin?

    user_path(current_user)
  end

  def authenticate_admin
    return if current_user.admin?

    redirect_to path_flow, notice: 'Access denied.'
  end

  def file_params
    params.require(:file).permit(:csv)
  end
end
