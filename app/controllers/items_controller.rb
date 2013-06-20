class ItemsController < ApplicationController
  before_filter :find_item, :except => [:index, :new, :create]
  before_filter :authenticate_user!

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
  	@item = Item.new(params[:item])

    if @item.save
      redirect_to @item, :notice => "Item was successfully created"
    else
      render action: "new"
    end
  end

  def update
    if @item.update_attributes(params[:item])
      redirect_to @item, :notice => "Item was successfully updated"
    else
      render action: "edit"
    end
  end

  def destroy
    @item.destroy
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end
end
