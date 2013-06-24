class Tiding < ActiveRecord::Base
  extend Enumerize

  attr_accessible :item_id, :kind, :created_at
  belongs_to :item

  enumerize :kind, :in => [:created, :bought, :sold_out]
end
