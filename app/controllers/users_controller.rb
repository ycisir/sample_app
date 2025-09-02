class UsersController < ApplicationController
  def list_users
    @users = User.all
  end
end
