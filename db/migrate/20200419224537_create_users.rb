class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :full_name
      t.integer :age
      t.boolean :admin
      t.timestamps
    end
  end
end
