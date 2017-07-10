class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.bigint :merchant_id
      t.string :code
      t.string :name
      t.string :description
      t.string :url
      t.string :key
      t.string :secret
      t.string :source_url
      t.string :source_callback_success_url
      t.string :source_callback_fail_url
      t.timestamps
    end
    add_foreign_key :apps, :merchants, column: :merchant_id, primary_key: :id
  end
end
