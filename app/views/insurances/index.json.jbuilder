json.array!(@insurances) do |insurance|
  json.extract! insurance, :id, :payment_method, :company, :policy_no, :group_id
  json.url insurance_url(insurance, format: :json)
end
