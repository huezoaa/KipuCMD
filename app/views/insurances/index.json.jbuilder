json.array!(@insurances) do |insurance|
  json.extract! insurance, :id, :payment_method, :company, :policy_no, :group_id,
  :address_1, :address_2, :city, :state, :zipcode, :phone
  json.url insurance_url(insurance, format: :json)
end
