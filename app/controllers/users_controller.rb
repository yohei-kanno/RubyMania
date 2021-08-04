class UsersController < ApplicationController
  
  skip_before_action :require_login, only: %i[ new create ]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to root_path
      flash[:mysuccess] = t("flash.success_create") 
    else
      flash.now[:mydanger] = t("flash.failure_create")
      render :new
    end
  end
  
  def edit
  end
  
  def update
  end
  
  private
  def params_user
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
  end
end
