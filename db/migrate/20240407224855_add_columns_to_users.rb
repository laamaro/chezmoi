class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_type, :integer
    add_column :users, :date_of_birth, :date
    add_column :users, :about, :string
  end
end
