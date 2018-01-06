class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price, :precision => 20, :scale => 10
      t.timestamps
    end
  end
end
