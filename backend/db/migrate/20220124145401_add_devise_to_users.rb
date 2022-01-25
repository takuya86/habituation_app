class AddDeviseToUsers < ActiveRecord::Migration[6.0]
  def up
    # add_column :users, :email, :string, default: "", null: false
    # add_column :users, :sign_in_count, :integer, default: 0, :null=>false
    # add_column :users, :current_sign_in_at, :datetime
    # add_column :users, :last_sign_in_at, :datetime
    # add_column :users, :current_sign_in_ip, :string
    # add_column :users, :last_sign_in_ip, :string
    # add_column :users, :confirmation_token, :string
    # add_column :users, :confirmed_at, :datetime
    # add_column :users, :confirmation_sent_at, :datetime
    # add_column :users, :unconfirmed_email, :string
    # add_column :users, :uid, :string
    # add_column :users, :provider, :string
    # add_column :users, :encrypted_password, :string, default: "", :null=>false
    # add_column :users, :reset_password_token, :string
    # add_column :users, :reset_password_sent_at, :datetime
    # add_column :users, :remember_created_at, :datetime
    # add_index :users, :confirmation_token, unique: true
    # add_index :users, :email, unique: true
    # add_index :users, :reset_password_token, unique: true
  end

  def down
    # remove_column :users, :email, :string, default: "", null: false
    # remove_column :users, :sign_in_count, :integer, default: 0, :null=>false
    # remove_column :users, :current_sign_in_at, :datetime
    # remove_column :users, :last_sign_in_at, :datetime
    # remove_column :users, :current_sign_in_ip, :string
    # remove_column :users, :last_sign_in_ip, :string
    # remove_column :users, :confirmation_token, :string
    # remove_column :users, :confirmed_at, :datetime
    # remove_column :users, :confirmation_sent_at, :datetime
    # remove_column :users, :unconfirmed_email, :string
    # remove_column :users, :uid, :string
    # remove_column :users, :provider, :string
    # remove_column :users, :encrypted_password, :string, default: '', :null=>false
    # remove_column :users, :reset_password_token, :string
    # remove_column :users, :reset_password_sent_at, :datetime
    # remove_column :users, :remember_created_at, :datetime
    # remove_index :users, :confirmation_token, unique: true
    # remove_index :users, :email, unique: true
    # remove_index :users, :reset_password_token, unique: true
  end
end
