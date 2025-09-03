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

end
