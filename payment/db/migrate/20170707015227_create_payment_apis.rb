class CreatePaymentApis < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_apis do |t|
      t.bigint :payment_provider_id
      t.bigint :merchant_id
      t.string :app_id
      t.string :api_key
      t.string :api_secret
      t.string :account_email
      t.timestamps
    end
      add_foreign_key :payment_apis, :merchants, column: :merchant_id, primary_key: :id
      add_foreign_key :payment_apis, :payment_providers, column: :payment_provider_id, primary_key: :id
  end
end