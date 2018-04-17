class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.boolean :login
      t.integer :shipmentRate

      t.timestamps
    end
  end
end
