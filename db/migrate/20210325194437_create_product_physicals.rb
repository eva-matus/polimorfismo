class CreateProductPhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :product_physicals do |t|
      t.references :products, foreign_key: true

      t.timestamps
    end
  end
end
