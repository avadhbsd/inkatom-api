class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :title
      t.string :description
      t.integer :units_in_stock
      t.string :credits
      t.string :shippingDetails
      t.string :productUrl
      t.decimal :price, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
