class CreateProductDigitals < ActiveRecord::Migration[5.2]
  def change
    create_table :product_digitals do |t|
      t.references :products, foreign_key: true

      t.timestamps
    end
  end
end
