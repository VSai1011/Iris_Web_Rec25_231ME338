class AddDeviseToUsers < ActiveRecord::Migration[8.0]
  def self.up
    change_table :users, bulk: true do |t|
      ## Database authenticatable
      t.string :email, null: false, default: "" unless column_exists?(:users, :email)
      t.string :encrypted_password, null: false, default: "" unless column_exists?(:users, :encrypted_password)

      ## Recoverable
      t.string :reset_password_token unless column_exists?(:users, :reset_password_token)
      t.datetime :reset_password_sent_at unless column_exists?(:users, :reset_password_sent_at)

      ## Rememberable
      t.datetime :remember_created_at unless column_exists?(:users, :remember_created_at)
    end

    add_index :users, :email, unique: true unless index_exists?(:users, :email)
    add_index :users, :reset_password_token, unique: true unless index_exists?(:users, :reset_password_token)
  end

  def self.down
    remove_index :users, :email if index_exists?(:users, :email)
    remove_index :users, :reset_password_token if index_exists?(:users, :reset_password_token)

    change_table :users, bulk: true do |t|
      t.remove :encrypted_password if column_exists?(:users, :encrypted_password)
      t.remove :reset_password_token if column_exists?(:users, :reset_password_token)
      t.remove :reset_password_sent_at if column_exists?(:users, :reset_password_sent_at)
      t.remove :remember_created_at if column_exists?(:users, :remember_created_at)
    end
  end
end
