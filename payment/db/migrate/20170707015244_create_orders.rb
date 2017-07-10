class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.bigint :payment_apis_id
      t.bigint :app_id
      t.json :items
      t.string :external_id
      t.integer :total_amount
      t.integer :amount_paid
      t.string :payment_receipt_id
      t.string :payment_invoice_id
      t.timestamps
    end
      add_foreign_key :orders, :payment_apis, column: :payment_apis_id, primary_key: :id
      add_foreign_key :orders, :apps, column: :app_id, primary_key: :id
  end
end
