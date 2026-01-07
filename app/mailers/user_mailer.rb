class UserMailer < ApplicationMailer
  def account_activation(user)
    #development
    # @user = user
    # @greeting = "Hi"

    #production
    @user  = User.find(params[:user_id])
    @token = params[:token]
    mail to: @user.email, subject: "Account activation"
  end

  def password_reset(user)
    # @user = user #development

    #production
    @user = User.find(params[:user_id])
    @token = params[:token]

    mail to: @user.email, subject: "Password reset"
  end
end
