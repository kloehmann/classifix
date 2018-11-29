class CreateOutlineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :outline_items do |t|
      t.string :key, unique: true
      t.string :label
      t.text :description
      t.references :parent

      t.timestamps
    end
  end
end
