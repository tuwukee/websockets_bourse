class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  validates_presence_of :name

  has_many :sell_items
  has_many :items, :through => :sell_items

  def admin?
    admin
  end
end
