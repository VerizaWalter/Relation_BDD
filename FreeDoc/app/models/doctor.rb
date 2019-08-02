class Doctor < ApplicationRecord
	has_many :appointments
    has_many :patients 
    has_many :specialities
    belongs_to :city

    
end
