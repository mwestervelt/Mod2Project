class CreateResolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :resolutions do |t|
      t.string :title
      t.text :description
      t.date :end_date
      t.boolean :done

      t.timestamps
    end
  end
end
