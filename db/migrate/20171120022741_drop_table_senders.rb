class DropTableSenders < ActiveRecord::Migration[5.1]
  def change
    drop_table :senders do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
