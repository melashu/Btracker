class CatagoriesController < ApplicationController
  before_action :must_log!
  def index; end

  def new
   @catagory = Catagory.new
  end

  def create
    @catagory = Catagory.new(name: params[:catagory][:name], author: current_user, icon: params[:catagory][:icon])


    if @catagory.save
      flash[:notice] = 'Successfully created!'
      redirect_to user_catagories_path
    else
      render :new, status: 422
    end
  end

  private

  def param_checker
    params.require(:user).permit(:icon, :name, :user_id)
  end
end
