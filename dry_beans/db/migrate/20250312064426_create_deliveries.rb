class CreateDeliveries < ActiveRecord::Migration[8.0]
  def change
    create_table :deliveries do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :delivery_type
      t.string :recipient
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
