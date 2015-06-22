json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :insurance_id :relationship, :first_name, :last_name, :middle_initial, :dob, :address_1, :address_2, :city, :state, :zipcode, :gender, :ssn, :home_phone

end
