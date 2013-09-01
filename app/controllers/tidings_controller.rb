class TidingsController < ApplicationController
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
      respond_to do |format|
        format.js
      end
  	else
      ## TO DO
  	end
  end
end
