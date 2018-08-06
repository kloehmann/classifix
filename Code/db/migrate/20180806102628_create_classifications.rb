class CreateClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :classifications do |t|
      t.integer :system_id
      t.integer :item_id

      t.timestamps
    end
  end
end
