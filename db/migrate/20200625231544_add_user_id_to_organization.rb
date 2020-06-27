class AddUserIdToOrganization < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :user_id, :int
  end
end
