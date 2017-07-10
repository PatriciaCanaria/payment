class CreateMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :merchants do |t|
     t.string :email
     t.string :password
     t.string :company_name
     t.string :company_address
     t.string :first_name
     t.string :last_name
     t.string :middle_name
     t.timestamp :birthdate
	 t.timestamps
    end
  end
end
