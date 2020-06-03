class CreateUserOnEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_on_events do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
