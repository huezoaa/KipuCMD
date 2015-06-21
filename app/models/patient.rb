class Patient < ActiveRecord::Base
  has_many :address
end
