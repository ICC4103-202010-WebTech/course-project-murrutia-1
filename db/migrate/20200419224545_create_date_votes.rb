class CreateDateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :date_votes do |t|
      t.date :date_voted
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
