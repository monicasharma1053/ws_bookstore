class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :payment
      t.string :status
      t.decimal :total

      t.timestamps
    end
  end
end
