class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :orders, foreign_key: true
      t.references :products, foreign_key: true
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
