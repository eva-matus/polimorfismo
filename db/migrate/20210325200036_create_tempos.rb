class CreateTempos < ActiveRecord::Migration[5.2]
  def change
    create_table :tempos do |t|

      t.timestamps
    end
  end
end
