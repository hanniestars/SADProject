class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :agency_name
      t.text :location
      t.text :description

      t.timestamps null: false
    end
  end
end
