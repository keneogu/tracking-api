class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :auth_token

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :auth_token, unique: true
  end
end
