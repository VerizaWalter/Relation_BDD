class Tag < ApplicationRecord
	has_many :gossips , through: :table_gossip_tags
end
