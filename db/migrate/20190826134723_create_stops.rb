class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.references :guide, foreign_key: true
      t.string :name
      t.text :description
      t.string :image
      t.integer :list_order

      t.timestamps
    end
  end
end
