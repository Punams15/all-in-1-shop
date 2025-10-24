class RenameRoleToUserTypeInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :role, :user_type
  end
end
