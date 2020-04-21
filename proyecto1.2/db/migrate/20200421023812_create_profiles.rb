class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :system_admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
