ActiveAdmin.register Account do
  permit_params :login, :password, :service_item_id, :country_iso_4217, :status

  menu parent: "Accounts"

end
