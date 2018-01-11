class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :service_item
      t.datetime :expires_at
    end
  end
end
