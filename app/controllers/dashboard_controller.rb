class DashboardController < ApplicationController
  def index
    if !(@user = User.find session[:user_id])
      flash[:alert] = 'Nie jesteś zalogowany'
      redirect_to controller: 'static_pages', action:'index'
    end
  end
end
