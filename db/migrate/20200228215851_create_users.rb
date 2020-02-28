class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zipcode
      
      t.timestamps
    end
  end
end
