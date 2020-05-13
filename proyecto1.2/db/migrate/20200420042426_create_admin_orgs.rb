class CreateAdminOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_orgs do |t|
      t.string :name
      t.string :mail
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
