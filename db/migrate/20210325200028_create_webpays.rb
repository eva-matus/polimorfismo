class CreateWebpays < ActiveRecord::Migration[5.2]
  def change
    create_table :webpays do |t|

      t.timestamps
    end
  end
end
