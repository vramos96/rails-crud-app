# frozen_string_literal: true

class DeviseCreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :rfc
      t.string :nombre_empresa

      t.timestamps null: false
    end

    add_index :personas, :email,                unique: true
    add_index :personas, :reset_password_token, unique: true
    # add_index :personas, :confirmation_token,   unique: true
    # add_index :personas, :unlock_token,         unique: true
  end
end
