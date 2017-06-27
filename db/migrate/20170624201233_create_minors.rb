class CreateMinors < ActiveRecord::Migration[5.0]
  def change
    create_table :minors do |t|
    	t.string :user_id
      t.string :first_name
      t.string :last_name
      t.string :minor_email
      t.integer :phone
      t.string :activation_token
      t.timestamps
    end
  end
end
