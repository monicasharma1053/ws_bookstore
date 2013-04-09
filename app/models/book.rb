class Book < ActiveRecord::Base
  attr_accessible :author, :description, :isbn, :price, :title

  has_many :carts, dependent: :destroy
  has_many :orders, through: :carts
end
