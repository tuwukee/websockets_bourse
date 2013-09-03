class TidingsController < ApplicationController
  before_filter :open_bourse

  def create
  	@item = Item.find params[:tiding][:item_id]
  	sold_amount = params[:tiding][:sold_amount].to_i
  	tiding = @item.tidings.new(:name => @item.name,
  	                            :amount => @item.amount.to_i - sold_amount,
  	                            :sold_amount => sold_amount,
  	                            :kind => :bought)

  	if tiding.amount >= 0 &&  tiding.sold_amount > 0
  	  tiding.save
  	  @item.update_attributes(:amount => tiding.amount)
  	  @tiding = tiding
      @msg = "Congratulations! You've bought #{sold_amount} pieces of #{@item.name}"
      @type = "success"
  	else
      @msg = "You can't buy #{sold_amount} pieces of #{@item.name} right now."
      @type = "notice"
    end
  end

  private

  def open_bourse
    unless Bourse.open?
      redirect_to root_path, flash: {alert: "Oops, something went wrong. Please try again"}
    end
  end
end
