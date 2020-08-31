class AddMyNumberToAdminUser < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :my_number, :string
  end
end
