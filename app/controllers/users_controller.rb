class UsersController < ApplicationController

  # skip_before_action :check_login, only: [:login]
  before_action :check_login, only: [:new_user]

  def login
  end

  def get_login
    user = User.authenticate(params[:username], params[:password])

    if user
      session[:user] = user
      redirect_to root_path
    else
      render :login
    end
  end

  def logout
    session.destroy
    redirect_to login_path
  end

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

  def show
    @user = User.find(params[:id])
  end

  def create_user
    @user = User.new(user_params)
    # @user.name = @user.fullname # bad way
    if @user.save
      redirect_to action: :list_users
    else
      render :new_user, status: :unprocessable_entity
    end


    # render plain: params[:user]

  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :city_id, :gender, :cityname, :country)
  end
end
