class ChangeAuthorsToSenders < ActiveRecord::Migration[5.1]
  def change
    rename_table :authors, :senders
  end
end
