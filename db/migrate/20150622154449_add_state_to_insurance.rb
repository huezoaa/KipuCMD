class AddStateToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :state, :string
  end
end
