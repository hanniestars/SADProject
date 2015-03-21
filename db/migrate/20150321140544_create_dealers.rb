class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :dealer_name
      t.text :description

      t.timestamps null: false
    end
  end
end
