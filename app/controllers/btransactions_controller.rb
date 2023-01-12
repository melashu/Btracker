class BtransactionsController < ApplicationController
  def index
    @catagory = Catagory.find(params[:catagory_id])
    @all_transaction = @catagory.btransactions.order(created_at: :DESC)
  end

  def show
    @transactions = Btransaction.find(params[:id])
  end

  def new
    @catagories = current_user.catagories
  
  end

  def create
    catagories = current_user.catagories
    transaction = Btransaction.new(name: params[:user][:name], amount: params[:user][:amount], author: current_user)
    transaction.catagories << Catagory.find(params[:user][:catagory])
    if transaction.save
      flash[:notice] = 'Successfuly created'
      redirect_to user_catagory_btransactions_path
    else
      flash[:alert] = transaction.errors.full_messages.to_s
      redirect_to new_user_catagory_btransaction_path
    end
  end
end
