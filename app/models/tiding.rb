class Tiding < ActiveRecord::Base
  extend Enumerize

  attr_accessible :item_id, :kind, :created_at, :name, :amount, :sold_amount
  belongs_to :item

  enumerize :kind, :in => [:created, :bought, :sold_out]
end
