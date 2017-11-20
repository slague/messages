class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :text
      t.string :sender
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
