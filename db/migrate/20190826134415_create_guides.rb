class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.integer :duration
      t.text :overview
      t.string :location
      t.integer :distance
      t.string :category

      t.timestamps
    end
  end
end
