class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.integer :pricing
      t.boolean :leader
      t.references :user, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
