class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :delivery_address
      t.string :pickup_address
      t.date :order_date
      t.time :order_time
      t.date :delivery_date
      t.time :delivery_time
      t.decimal :fee, :precision => 15, :scale => 10
      t.string :status
      t.belongs_to :user
      t.belongs_to :payment_info

      t.timestamps
    end
  end
end
