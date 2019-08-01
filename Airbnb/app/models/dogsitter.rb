class Dogsitter < ApplicationRecord
  belongs_to :cities
  has_many :strolls
  has_many :dogs, through: :strolls
end
