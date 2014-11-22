class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @user = User.all
  end
end
