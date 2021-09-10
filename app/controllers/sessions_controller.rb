class SessionsController < ApplicationController
  def destroy
    logout
    flash[:mysuccess] = t('flash.success_logout')
    redirect_to root_url
  end
end
