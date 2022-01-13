class Subject < ApplicationRecord
	belongs_to :desipline
	validates :name, presence: true
end
