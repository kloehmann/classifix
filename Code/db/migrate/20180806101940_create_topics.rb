class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :key
      t.string :label
      t.text :description

      t.timestamps
      add_index :key_unique, [:key], :unique => true
    end
  end
end
