class CreateMailBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :mail_boxes do |t|
      t.integer :emitter
      t.integer :receiver
      t.string :message

      t.timestamps
    end
  end
end
