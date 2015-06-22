class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :relationship
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :dob
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :gender
      t.string :ssn
      t.string :home_phone

      t.timestamps null: false
    end
  end
end
