class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :login
      t.string :password
      t.string :country_iso_4217
      t.references :service
      t.string :status
      t.timestamps
    end
  end
end
