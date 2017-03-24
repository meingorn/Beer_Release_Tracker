class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.password_digest :password
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
