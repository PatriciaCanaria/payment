class Contact < ApplicationRecord
	belongs_to :merchant
	has_many :contact_types
end
