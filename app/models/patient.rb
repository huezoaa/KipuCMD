class Patient < ActiveRecord::Base
  has_many :addresses
  has_many :insurances
end
