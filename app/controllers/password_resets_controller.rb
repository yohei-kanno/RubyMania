class PasswordResetsController < ApplicationController
  skip_before_action :require_login

  def new; end

  def create
    @user = User.find_by(email: params[:email])
    if @user
      @user.deliver_reset_password_instructions!
      flash[:mysuccess] = 'パスワードリセットメールを送信しました'
      redirect_to root_path
    else
      flash[:mydanger] = '不正なメールアドレスです'
      redirect_to new_password_reset_path
    end
  end

  def edit
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])
    if @user.blank?
      not_authenticated
      nil
    end
  end

  def update
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])
    if @user.blank?
      not_authenticated
      return
    end

    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.change_password!(params[:user][:password])
      redirect_to root_path
      flash[:mysuccess] = 'パスワードを更新しました！'
    else
      render action: 'edit'
    end
  end
end
