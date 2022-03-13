class AddCoffeeTypeReferenceToCoffeeOrders < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :coffee_orders, :coffee_types
    add_index :coffee_orders, :coffee_type_id
    change_column_null :coffee_orders, :coffee_type_id, false
  end
end
