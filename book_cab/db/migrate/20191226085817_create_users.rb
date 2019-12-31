class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.string :passward
      t.string :contact_no
      t.timestamps
    end
  end
end
