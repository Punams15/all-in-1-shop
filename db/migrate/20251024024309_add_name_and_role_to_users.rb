class AddNameAndRoleToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :integer, default: 0, null: false
  end
end

