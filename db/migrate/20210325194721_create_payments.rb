class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :category, polymorphic: true
      t.string :category

      t.timestamps
    end
  end
end
