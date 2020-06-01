class CreateOptionDates < ActiveRecord::Migration[6.0]
  def change
    create_table :option_dates do |t|
      t.string :day

      t.timestamps
    end
  end
end
