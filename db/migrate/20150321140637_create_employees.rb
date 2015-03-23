class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :cellphone_no
      t.integer :agency_id
      t.integer :dealer_store_id

      t.timestamps null: false
    end
  end
end
