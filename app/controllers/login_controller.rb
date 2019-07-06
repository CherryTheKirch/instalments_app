class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def check_login
    @user = User.find_by_email params[:email]

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to controller: 'dashboard', action: 'index'
    else
      flash.alert = 'Logowanie nie powiodło się'
      render 'index'
    end
  end

end
