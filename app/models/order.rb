class Order < ActiveRecord::Base
  attr_accessible :address, :name, :payment, :status, :total

  has_many :carts, dependent: :destroy 
  has_many :books, through: :carts

  before_create :set_total_and_status

  protected
  def set_total_and_status
  	self.total = 0.00
  	self.status = "not shipped"
  end
end
