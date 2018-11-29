class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :implications
      t.string :goal
      t.string :generalrecommendation
      t.string :testguidance
      t.references :outline_item

      t.timestamps
    end
  end
end
