class PaymentApi < ApplicationRecord
	belongs_to :provider_provider
	belongs_to :merchant
end
