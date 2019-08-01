class Gossip < ApplicationRecord
	belongs_to :users , optional: true
	has_many :tags , through: :table_gossip_tags
	has_many :comments
end
