class CreatePaymentProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_providers do |t|
      t.string :code
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
