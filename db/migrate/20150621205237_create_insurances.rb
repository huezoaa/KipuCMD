class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :payment_method
      t.string :company
      t.string :policy_no
      t.string :group_id

      t.timestamps null: false
    end
  end
end
