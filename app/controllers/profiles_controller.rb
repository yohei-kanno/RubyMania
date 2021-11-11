class ProfilesController < ApplicationController
  def show
    @study_records = current_user.study_records.recent
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(params_user)
      redirect_to profile_path
      flash[:mysuccess] = t('flash.success_update')
    else
      flash.now[:mydanger] = t('flash.failure_update')
      render :edit
    end
  end

  private

  def params_user
    params.require(:user).permit(:name)
  end
end
