class Order < ApplicationRecord
	belongs_to :apps
	belongs_to :payment_api
end
