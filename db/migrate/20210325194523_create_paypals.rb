class CreatePaypals < ActiveRecord::Migration[5.2]
  def change
    create_table :paypals do |t|

      t.timestamps
    end
  end
end
