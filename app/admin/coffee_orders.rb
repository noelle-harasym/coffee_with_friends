ActiveAdmin.register CoffeeOrder do
  permit_params :user_id, :coffee_type_id, :modification_iced, :dairy_type_id,
                :sweetness_type_id, :modification_other, :rating, :picture, :date

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
