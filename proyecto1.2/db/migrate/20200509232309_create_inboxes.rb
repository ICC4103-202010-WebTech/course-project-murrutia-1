class CreateInboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :inboxes do |t|
      t.integer :user_from
      t.string :message
      t.integer :user_to
      t.references :inboxes, :user, foreign_key: true


      t.timestamps
    end
  end
end
