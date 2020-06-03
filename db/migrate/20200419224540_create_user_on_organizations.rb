class CreateUserOnOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_on_organizations do |t|
      t.integer :user_role
      t.references :organization, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
