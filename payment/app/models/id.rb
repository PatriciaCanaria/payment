class Id < ApplicationRecord
	has_many :id_types
	belongs_to :merchant
end
