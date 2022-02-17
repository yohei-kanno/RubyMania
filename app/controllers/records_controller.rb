class RecordsController < ApplicationController
  before_action :your_dev_set, only: %i[show]
  def show
    @study_records = current_user.study_records.recent
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(params_user)
      redirect_to record_path
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

  def your_dev_set
    return unless current_user

    @dstr = current_user.dev(1)
    @dint = current_user.dev(2)
    @darr = current_user.dev(3)
    @dhash = current_user.dev(4)
    @dtotal = current_user.dev(5)
    @dobj = current_user.dev(6)
    @dreg = current_user.dev(7)
  end
end
