ActiveAdmin.register User do
  permit_params :user_id, :expires_at, :service_item_id

end
