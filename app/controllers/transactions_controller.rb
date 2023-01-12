class TransactionsController < ApplicationController
  before_action :must_log!
  def index
    @transaction = Btransaction.all.order(created_at: :DESC)
  end

  def show
    @transactions = Btransaction.find(params[:id])
  end
end
