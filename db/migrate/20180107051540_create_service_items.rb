class CreateServiceItems < ActiveRecord::Migration[5.1]
  def change
    create_table :service_items do |t|
      t.string :name
      t.decimal :price, precision: 20, scale: 10
      t.references :service_category
      t.timestamps
    end
  end
end
