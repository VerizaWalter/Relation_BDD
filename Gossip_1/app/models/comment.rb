class Comment < ApplicationRecord
	belongs_to :gossips, optional: true
	belongs_to :users, optional: true
end
