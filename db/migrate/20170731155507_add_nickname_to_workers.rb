class AddNicknameToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :nickname, :string
  end
end
