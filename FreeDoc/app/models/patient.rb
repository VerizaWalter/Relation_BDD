class Patient < ApplicationRecord
	 has_many :appointments
     has_many :doctors
     belongs_to :city
end
