json.extract! coffee_order, :id, :user_id, :coffee_type_id, :modification_iced, :dairy_type_id, :sweetness_type_id, :modification_other, :rating, :picture, :date, :created_at, :updated_at
json.url coffee_order_url(coffee_order, format: :json)
