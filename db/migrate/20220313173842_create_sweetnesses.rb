class CreateSweetnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :sweetnesses do |t|
      t.integer :sweetness_type

      t.timestamps
    end
  end
end
