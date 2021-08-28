class SessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    if @user = login(params[:email], params[:password], params[:remember])
      auto_login(@user)
      redirect_to root_path
      flash[:mysuccess] = t('flash.success_login')
    else
      flash.now[:mydanger] = t('flash.failure_login')
      render :new
    end
  end

  def destroy
    logout
    flash[:mysuccess] = t('flash.success_logout')
    redirect_to root_url
  end
end
