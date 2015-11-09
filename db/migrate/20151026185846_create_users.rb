class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.decimal :balance
      t.string :password

      t.timestamps null: false
    end
  end
end