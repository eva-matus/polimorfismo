class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :imageable, polymorphic: true
      t.string :images
      t.string :url

      t.timestamps
    end
  end
end
