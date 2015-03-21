class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :serial_number
      t.string :invoice_number
      t.date :date_of_purchase
      t.string :mode_of_payment
      t.string :mode_of_delivery
      t.string :request_for_installation
      t.decimal :invoice_amount
      t.decimal :incentive
      t.integer :product_id
      t.integer :dealer_store_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
