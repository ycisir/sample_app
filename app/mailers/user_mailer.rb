class UserMailer < ApplicationMailer
  #development

  # def account_activation(user)
    # @user = user
    # @greeting = "Hi"

    # mail to: @user.email, subject: "Account activation"
  # end

  # def password_reset(user)
    # @user = user
    # mail to: @user.email, subject: "Password reset"
  # end


  #production

  def account_activation
    @user  = User.find(params[:user_id])
    @token = params[:token]
    mail to: @user.email, subject: "Account activation"
  end

  def password_reset
    @user = User.find(params[:user_id])
    @token = params[:token]

    mail to: @user.email, subject: "Password reset"
  end
end
