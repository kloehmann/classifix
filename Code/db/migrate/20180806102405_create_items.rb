class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :key
      t.string :label
      t.text :description
      t.integer :topic_id

      t.timestamps
      add_index :key_unique, [:key], :unique => true
    end
  end
end
