class CreatePaymentInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_infos do |t|
      t.integer :card_grid1
      t.integer :card_grid2
      t.integer :card_grid3
      t.integer :card_grid4
      t.string :first_name
      t.string :last_name
      t.date :expiration_date
      t.integer :cvv
      t.string :card_type
      t.belongs_to :user
      

      t.timestamps
    end
  end
end
