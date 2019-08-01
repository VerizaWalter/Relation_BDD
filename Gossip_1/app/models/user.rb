class User < ApplicationRecord
	belongs_to :cities, optional: true
	has_many :gossips
	has_many :comments
end
