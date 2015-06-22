class AddInsuranceToSubscriber < ActiveRecord::Migration
  def change
    add_reference :subscribers, :insurance, index: true
    add_foreign_key :subscribers, :insurances
  end
end
