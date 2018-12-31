class CreateResolutionTag < ActiveRecord::Migration[5.2]
  def change
    create_table :resolution_tags do |t|
      t.references :resolution, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
