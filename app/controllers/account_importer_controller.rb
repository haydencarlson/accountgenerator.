class AccountImporterController < ApplicationController

  def create
    params['account_list'].split(',').each do |account|
      login = account.split(':')[0]
      password = account.split(':')[1]
      Account.create({login: login, password: password, status: "ok", service_item_id: 1})
    end


    redirect_to admin_accounts_path
  end

end
