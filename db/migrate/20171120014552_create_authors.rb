class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
