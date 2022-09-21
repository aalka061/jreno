class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :project_type

      t.timestamps
    end
  end
end
