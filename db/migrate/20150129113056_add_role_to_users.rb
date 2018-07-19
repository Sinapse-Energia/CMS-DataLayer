class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rol, :string
    add_column :users, :nombre, :text
    add_column :users, :apellidos, :text
    add_column :users, :telefono, :text
    add_column :users, :time_zone, :string
  end
end
