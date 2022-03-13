class AddSweetnessTypeReferenceToCoffeeOrders < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :coffee_orders, :sweetnesses, column: :sweetness_type_id
    add_index :coffee_orders, :sweetness_type_id
    change_column_null :coffee_orders, :sweetness_type_id, false
  end
end
