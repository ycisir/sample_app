class UsersController < ApplicationController
  def list_users
    @users = User.all
  end

  def show_new_template
  end

  def display_other_template
    render "common_templates/new_template"
    # render plain: params.inspect

    #call users controller list users
    # render action: :list_users
    # render :list_users #same as above


    # redirect_to action: :list_users #
  end


  def new_user
    @user = User.new
    # render "new_user1"
  end

  def create_user
    @user = User.new(user_params)

    if @user.save
      redirect_to action: :list_users
    else
      render :new_user
    end


    # render plain: params[:user]

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :city, :gender)
  end
end
