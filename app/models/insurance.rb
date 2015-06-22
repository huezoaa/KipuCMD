class Insurance < ActiveRecord::Base
  belongs_to :patient
  has_many :subscribers
end
