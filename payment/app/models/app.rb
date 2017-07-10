class App < ApplicationRecord
	belongs_to :merchant
	has_many :order
end
