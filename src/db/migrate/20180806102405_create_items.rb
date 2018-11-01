class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :key, unique:true
      t.string :label
      t.text :description
      t.references :topic

      t.timestamps
    end
  end
end
