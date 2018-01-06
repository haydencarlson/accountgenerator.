class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :service
      t.datetime :expires_at
    end
  end
end
