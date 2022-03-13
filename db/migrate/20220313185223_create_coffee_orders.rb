class CreateCoffeeOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_orders do |t|
      t.integer :user_id
      t.integer :coffee_type_id
      t.boolean :modification_iced
      t.integer :dairy_type_id
      t.text :modification_other
      t.integer :rating
      t.string :picture
      t.date :date

      t.timestamps
    end
  end
end
