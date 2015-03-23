class CreateProductPrices < ActiveRecord::Migration
  def change
    create_table :product_prices do |t|
      t.decimal :price
      t.date :effective_date
      t.integer :dealer_store_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
