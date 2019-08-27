class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.text :content
      t.references :guide, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
