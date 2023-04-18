ActiveAdmin.register OrderProduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :mrp, :quantity, :selling_price, :discount, :discount_type, :total_price, :user_id, :product_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:mrp, :quantity, :selling_price, :discount, :discount_type, :total_price, :user_id, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
