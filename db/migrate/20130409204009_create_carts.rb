class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :book_number
      t.integer :order_number

      t.timestamps
    end
  end
end
