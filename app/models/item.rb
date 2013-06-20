class Item < ActiveRecord::Base
  attr_accessible :amount, :name, :price

  validates_presence_of :amount, :name, :price
end
