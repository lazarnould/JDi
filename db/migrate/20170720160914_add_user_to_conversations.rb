class AddUserToConversations < ActiveRecord::Migration[5.1]
  def change
    add_reference :conversations, :user, foreign_key: true
  end
end
