class CreateStripes < ActiveRecord::Migration[5.2]
  def change
    create_table :stripes do |t|

      t.timestamps
    end
  end
end
