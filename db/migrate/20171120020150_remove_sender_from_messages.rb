class RemoveSenderFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :sender_id
  end
end
