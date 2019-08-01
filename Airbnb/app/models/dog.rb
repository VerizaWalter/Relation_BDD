class Dog < ApplicationRecord
  belongs_to :cities
  has_many :strolls
  has_many :dogsitters, through: :stroll
end
