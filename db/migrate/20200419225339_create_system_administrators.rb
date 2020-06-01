class CreateSystemAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :system_administrators do |t|
      t.integer :is_admin
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
