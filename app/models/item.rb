class Item < ActiveRecord::Base
  attr_accessible :amount, :name, :price, :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ActionController::Base.helpers.asset_path("missing_:style.png")

  validates_presence_of :amount, :name, :price

  has_many :sell_items, :dependent => :destroy
  has_many :users, :through => :sell_items
  has_many :tidings, :dependent => :destroy
end
