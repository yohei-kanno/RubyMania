class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create activate]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to root_path
      flash[:mysuccess] = 'アカウント有効化メールを送信しました'
    else
      flash.now[:mydanger] = t('flash.failure_create')
      render :new
    end
  end

  def edit; end

  def update; end

  def activate
    if (@user = User.load_from_activation_token(params[:id]))
      @user.activate!
      auto_login(@user)
      redirect_to root_path
      flash[:mysuccess] = 'アカウントが有効化されました'
    else
      not_authenticated
    end
  end

  private

  def params_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :agreement)
  end
end
