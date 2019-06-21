class RegistrationController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def create_user
    user = User.new email: params[:email], password: params[:password]

    if user.save
      redirect_to dashboard_path
    else
      flash.alert = 'Nie udało się utworzyć konta.'
      render 'index'
    end
  end

  def check_password_confirmation
    if params[:password] < 6
      flash.alert = 'Hasło jest za krótkie.'
      render 'index'
    elsif params[:password] != params[:password_confirmation]
      flash.alert = 'Hasła się nie zgadzają.'
      render 'index'
    else
      create_user
    end
  end


end
