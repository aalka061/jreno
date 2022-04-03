class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :main_image_url
      t.text :description

      t.timestamps
    end
  end
end
