class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.references :ticket, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
