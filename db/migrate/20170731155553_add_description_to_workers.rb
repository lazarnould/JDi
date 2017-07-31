class AddDescriptionToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :description, :text
  end
end
