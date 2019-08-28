class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.references :guide, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
