class CreateUserAuthLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_auth_logs do |t|
      t.string :auth_token
      t.datetime :deleted_at
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :user_auth_logs, :deleted_at
  end
end
