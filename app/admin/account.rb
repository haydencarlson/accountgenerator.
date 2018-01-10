ActiveAdmin.register Account do
  permit_params :login, :password, :service_item_id, :country_iso_4217, :status

  controller do
    def import_accounts
      renders view 'app/views/admin/accounts/import_accounts.html.erb'
    end
  end

  action_item do
    link_to "Import Accounts", import_accounts_admin_accounts_path
  end

  collection_action :import_accounts, :method => :get do

  end

end
