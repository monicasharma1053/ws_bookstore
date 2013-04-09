class Order < ActiveRecord::Base
  attr_accessible :address, :name, :payment, :status, :total
end
