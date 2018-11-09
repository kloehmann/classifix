class CreateClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :classifications do |t|
      t.references :system
      t.references :outline_item

      t.timestamps
    end
  end
end
