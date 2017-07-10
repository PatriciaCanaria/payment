class CreateIds < ActiveRecord::Migration[5.1]
  def change
    create_table :ids do |t|
      t.bigint :id_type_id
      t.string :details
      t.string :idable_type
      t.bigint :idable_id
      t.timestamps
    end
    add_foreign_key :ids, :merchants, column: :id_type_id, primary_key: :id
    add_foreign_key :ids, :id_types, column: :idable_id, primary_key: :id
  end
end
