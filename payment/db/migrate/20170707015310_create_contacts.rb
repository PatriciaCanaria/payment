class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.bigint :contact_type_id
      t.string :details
      t.string :contactable_type
      t.bigint :contactable_id
      t.timestamps
    end
      add_foreign_key :contacts, :merchants, column: :contactable_id, primary_key: :id
      add_foreign_key :contacts, :contact_types, column: :contact_type_id, primary_key: :id
  end
end
