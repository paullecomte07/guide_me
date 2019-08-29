class CreateGuideTags < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_tags do |t|
      t.references :tag, foreign_key: true
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end
