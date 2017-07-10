class Merchant < ApplicationRecord
	has_many :ids
	has_many :contacts
	has_many :apps
	has_many :payment_apis
end
