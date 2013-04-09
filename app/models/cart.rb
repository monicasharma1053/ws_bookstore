class Cart < ActiveRecord::Base
  attr_accessible :book_number, :order_number

  belongs_to :book
  belongs_to :order 


  before_create :add_total
  before_destroy :subtract_total


  protected
  def add_total
  	book = Book.find(self.book_number)
  	order = Order.find(self.order_number)
  	unless order.status == "shipped"
  		order.total += book.price
  		order.save
  	end
  end

  def subtract_total
  	book = Book.find(self.book_number)
  	order = Order.find(self.order_number)
  	unless order.status == "shipped"
  		order.total -= book.price
  		order.save
  	end
  end


end
