class TableGossipTag < ApplicationRecord
	belongs_to :gossips
	belongs_to :tags
end
