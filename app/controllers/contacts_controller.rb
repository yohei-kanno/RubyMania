class ContactsController < ApplicationController
  skip_before_action :require_login
  
  def new
    @contact = Contact.new
  end
  
  def confirm
    @contact = Contact.new(contact_params)
    render :new if @contact.invalid?
  end
  
  def create
    @contact = Contact.new(contact_params)
    if params[:back].present?
      render :new
      return
    end
    
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to root_path
      flash[:mysuccess] = "お問い合わせを送信しました"
    else
      render :new
    end
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:name, :content)
  end
  
end
