class UsersController < ApplicationController
  before_action :must_log!
  def index
    redirect_to "/users/#{current_user.id}/catagories"
  end
end
